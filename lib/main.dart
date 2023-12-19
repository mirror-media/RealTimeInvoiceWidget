import 'package:flutter/material.dart';

import 'widget/real_time_invoice_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
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
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: RealTimeInvoiceWidget(
              title: '2024 總統大選鏡電視即時開票',
              message: '20:00  賴清德宣布拆違建',
            ),
          ),

          // GridView.builder(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2, // 列數
          //     crossAxisSpacing: 8.0, // 列之間的間距
          //     mainAxisSpacing: 8.0, // 行之間的間距
          //   ),
          //   itemCount: 10, // 網格中的項目數量
          //   itemBuilder: (BuildContext context, int index) {
          //     return GridItem(index: index);
          //   },
          // )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
