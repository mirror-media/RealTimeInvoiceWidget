import 'dart:async';

import 'package:get/get.dart';
import 'package:real_time_invoice_widget/data/provider/election_data_provider.dart';
import 'package:real_time_invoice_widget/model/election_data.dart';

class RealTimeInvoiceController extends GetxController {
  final ElectionDataProvider electionDataProvider = Get.find();
  final Rxn<ElectionData> rxElectionData = Rxn();
  Timer? fetchDataTimer;

  @override
  void onInit() async {
    super.onInit();
    fetchElectionData();
    fetchDataTimer = Timer.periodic(const Duration(seconds: 30), (Timer timer) {
      fetchElectionData();
    });
  }

  void fetchElectionData() async {
    rxElectionData.value = await electionDataProvider.getElectionData();
  }

  @override
  void dispose() {
    super.dispose();
    fetchDataTimer?.cancel();
  }
}
