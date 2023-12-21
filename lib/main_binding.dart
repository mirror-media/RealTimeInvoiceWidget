import 'package:get/get.dart';
import 'package:real_time_invoice_widget/data/provider/election_data_provider.dart';

class MainBinding  extends Bindings{

  void dependencies() {

    Get.put(ElectionDataProvider.create('https://whoareyou-gcs.readr.tw/json/2024homepage.json'));
    // TODO: implement dependencies
  }



}