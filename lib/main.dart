import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_time_invoice_widget/main_binding.dart';
import 'package:real_time_invoice_widget/real_time_invoice/real_time_invoice_widget.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      initialBinding: MainBinding(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RealTimeInvoiceWidget'),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: RealTimeInvoiceWidget(
            ),
          ),

        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
