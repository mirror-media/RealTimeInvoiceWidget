import 'package:flutter/material.dart';

class RealTimeInvoiceWidget extends StatelessWidget {
  const RealTimeInvoiceWidget({super.key, this.title, this.message});

  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
      width: double.infinity,
      color: const Color(0xFFF5F5F5),
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
        ],
      ),
    );
  }
}
