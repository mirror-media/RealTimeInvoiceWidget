

import 'package:real_time_invoice_widget/data/value/image_path.dart';

enum Organize { tpp, kmt, dpp }

extension OrganizeExtension on Organize {
  String logoPath() {
    switch (this) {
      case Organize.tpp:
        return ImagePath.tppLogo;
      case Organize.kmt:
        return ImagePath.kmtLogo;
      case Organize.dpp:
        return ImagePath.dppLogo;
    }
  }

  String president() {
    switch (this) {
      case Organize.tpp:
        return '柯文哲';
      case Organize.kmt:
        return '侯友宜';
      case Organize.dpp:
        return '賴清德';
    }
  }

  String vicePresident() {
    switch (this) {
      case Organize.tpp:
        return '吳欣盈';
      case Organize.kmt:
        return '趙少康';
      case Organize.dpp:
        return '蕭美琴';
    }
  }

  String numberIcon() {
    switch (this) {
      case Organize.tpp:
        return ImagePath.number1Icon;
      case Organize.kmt:
        return ImagePath.number3Icon;
      case Organize.dpp:
        return ImagePath.number2Icon;
    }
  }
}
