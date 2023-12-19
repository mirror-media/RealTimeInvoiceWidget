import 'package:flutter/material.dart';
import 'package:real_time_invoice_widget/model/media_invoice_item.dart';

class MediaListItem extends StatelessWidget {
  const MediaListItem(
      {super.key, required this.mediaInvoiceItem, required this.index});

  final MediaInvoiceItem mediaInvoiceItem;
  final int index;

  @override
  Widget build(BuildContext context) {
    TextStyle fontStyle = TextStyle(
        fontSize: 14,
        color: (index % 2 == 1) ? const Color(0xFF004EBC) : Color(0xFF153047),
        fontFamily: 'Noto Sans CJK TC');

    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            mediaInvoiceItem.name ?? '',
            style: fontStyle,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(mediaInvoiceItem.number1 ?? '', style: fontStyle),
        ),
        Expanded(
          flex: 1,
          child: Text(
            mediaInvoiceItem.number2 ?? '',
            style: fontStyle,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(mediaInvoiceItem.number3 ?? '', style: fontStyle),
        )
      ],
    );
  }
}
