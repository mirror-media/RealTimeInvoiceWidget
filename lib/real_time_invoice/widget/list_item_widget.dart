import 'package:flutter/material.dart';
import 'package:real_time_invoice_widget/data/value/image_path.dart';
import 'package:real_time_invoice_widget/model/election_row_data.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
      {super.key, required this.electionRowData, required this.index, required this.isPackage});

  final ElectionRowData electionRowData;
  final int index;
  final bool isPackage;

  @override
  Widget build(BuildContext context) {
    TextStyle fontStyle = TextStyle(
        fontSize: 14,
        color: (index % 2 == 1) ? const Color(0xFF004EBC) : const Color(0xFF153047),
        fontFamily: 'Noto Sans CJK TC');
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            electionRowData.key ?? '',
            style: fontStyle,
          ),
        ),
        Expanded(
          flex: 1,
          child: electionRowData.renderText[0] == '*'
              ? Image.asset(ImagePath.electedIcon,package: isPackage ? 'real_time_invoice_widget' : null)
              : Align(
                  alignment: Alignment.center,
                  child: Text(electionRowData.renderText[0],
                      style: fontStyle)),
        ),
        Expanded(
          flex: 1,
          child: electionRowData.renderText[1] == '*'
              ? Image.asset(ImagePath.electedIcon,package: isPackage ? 'real_time_invoice_widget' : null)
              : Align(
                  alignment: Alignment.center,
                  child: Text(electionRowData.renderText[1],
                      style: fontStyle)),
        ),
        Expanded(
          flex: 1,
          child: electionRowData.renderText[2] == '*'
              ? Center(
                  child: Image.asset(
                  ImagePath.electedIcon,
                  width: 17,
                  height: 17,package: isPackage ? 'real_time_invoice_widget' : null
                ))
              : Align(
                  alignment: Alignment.center,
                  child: Text(electionRowData.renderText[2],
                      style: fontStyle)),
        )
      ],
    );
  }
}
