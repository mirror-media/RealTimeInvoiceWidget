import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_time_invoice_widget/core/enum/organize.dart';
import 'package:real_time_invoice_widget/real_time_invoice/widget/candidate_widget.dart';
import 'package:real_time_invoice_widget/real_time_invoice/widget/media_list_item.dart';
import 'real_time_invoice_controller.dart';

class RealTimeInvoiceWidget extends GetView<RealTimeInvoiceController> {
  const RealTimeInvoiceWidget({
    super.key,
    this.title,
    this.message,
    this.backgroundColor,
  });

  final String? title;
  final String? message;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<RealTimeInvoiceController>()) {
      Get.put(RealTimeInvoiceController());
    }
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
      width: double.infinity,
      color: backgroundColor ?? const Color(0xFFF5F5F5),
      child: Column(
        children: [
          SizedBox(
            height: 24,
            width: double.infinity,
            child: Text(
              title ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Noto Sans CJK TC',
                  fontSize: 16,
                  color: Color(0xFF153047),
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF153047),
              borderRadius: BorderRadius.circular(2),
            ),
            child: SizedBox(
                width: double.infinity,
                height: 36,
                child: Center(
                    child: Text(
                  message ?? '',
                  style: const TextStyle(
                      color: Color(0xFFFFCC01),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Noto Sans CJK TC'),
                ))),
          ),
          const SizedBox(height: 16),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(flex: 1, child: Container()),
              const Expanded(
                  flex: 1,
                  child: CandidateWidget(
                    organize: Organize.tpp,
                  )),
              const SizedBox(
                width: 7,
              ),
              const Expanded(
                  flex: 1,
                  child: CandidateWidget(
                    organize: Organize.dpp,
                  )),
              const SizedBox(
                width: 7,
              ),
              const Expanded(
                  flex: 1,
                  child: CandidateWidget(
                    organize: Organize.kmt,
                  )),
              const SizedBox(
                width: 7,
              ),
            ],
          ),
          const SizedBox(height: 14),
          Obx(() {
            final itemList = controller.rxMediaInvoiceList;
            return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MediaListItem(
                    mediaInvoiceItem: itemList[index],
                    index: index,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(color: Color(0xFFC2C2C2));
                },
                itemCount: itemList.length);
          }),
          const Text(
            '票數說明：1.呈現票數係根據各台已報導票數輸入，與其即時票數略有落差。2.正確結果以中選會為主。',
            style: TextStyle(
              fontSize: 11,
              fontFamily: 'Noto Sans CJK TC',
              color: Color(0xFF153047),
            ),
          ),
          const SizedBox(height: 4),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '最後更新時間：2024/1/13 00:00',
              style: TextStyle(
                fontSize: 11,
                fontFamily: 'Noto Sans CJK TC',
                color: Color(0xFF9B9B9B),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            '查看更多',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                color: Color(0xFF153047),
                fontFamily: 'Noto Sans CJK TC'),
          )

        ],
      ),
    );
  }
}
