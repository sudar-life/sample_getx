import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/getx_controller_test.dart';
import 'package:sample_getx/src/controller/getx_service_test.dart';
import 'package:sample_getx/src/pages/get_view_sample.dart';
import 'package:sample_getx/src/pages/get_view_widget.dart';
import 'package:sample_getx/src/pages/getx_controller_widget.dart';
import 'package:sample_getx/src/pages/getx_service_widget.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Getx Controller"),
              onPressed: () {
                Get.to(
                  GetxControllerWidget(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<GetxControllerTest>(
                        () => GetxControllerTest()),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Getx Service"),
              onPressed: () {
                Get.to(
                  GetxServiceWidget(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<GetxServiceTest>(() => GetxServiceTest()),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Getx Route"),
              onPressed: () {
                Get.toNamed("/sample/test?name=개발하는남자");
              },
            ),
          ],
        ),
      ),
    );
  }
}
