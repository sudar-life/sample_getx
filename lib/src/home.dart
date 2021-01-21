import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/manage.dart';
import 'package:sample_getx/src/page_with_getx.dart';
import 'package:sample_getx/src/page_with_provider.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider vs Getx State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("GetX"),
                onPressed: () {
                  Get.to(PageWithGetx());
                }),
            RaisedButton(
                child: Text("Provider"),
                onPressed: () {
                  Get.to(PageWithProvider());
                }),
          ],
        ),
      ),
    );
  }
}
