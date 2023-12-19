import 'package:get/get.dart';
import 'package:real_time_invoice_widget/model/media_invoice_item.dart';

class RealTimeInvoiceController extends GetxController{
  final RxList<MediaInvoiceItem> rxMediaInvoiceList =RxList();

  @override
  void onInit() {
    super.onInit();
    rxMediaInvoiceList.add(MediaInvoiceItem(name: 'TVBS',number1: '1,000,000',number2: '1,000,000',number3: '1,000,000'));
    rxMediaInvoiceList.add(MediaInvoiceItem(name: '中天',number1: '1,000,000',number2: '1,000,000',number3: '1,000,000'));
    rxMediaInvoiceList.add(MediaInvoiceItem(name: '鏡新聞',number1: '1,000,000',number2: '1,000,000',number3: '1,000,000'));
    rxMediaInvoiceList.add(MediaInvoiceItem(name: '三立',number1: '1,000,000',number2: '1,000,000',number3: '1,000,000'));
    rxMediaInvoiceList.add(MediaInvoiceItem(name: '民視',number1: '1,000,000',number2: '1,000,000',number3: '1,000,000'));
  }
}