import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_getx/src/controller/reactive_state_controller.dart';
import 'package:sample_getx/src/controller/simple_state_controller.dart';
import 'package:sample_getx/src/page/simple_state_manage/with_getx.dart';
import 'package:sample_getx/src/page/simple_state_manage/with_providar.dart';

class ReactiveStateManagePage extends StatelessWidget {
  ReactiveStateManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SimpleStateControllerWithGetx());
    Get.put(ReactiveStateController());

    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                print("Count Update");
                return Text(
                  "${Get.find<ReactiveStateController>().count}",
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<ReactiveStateController>().increment();
              },
            ),
            RaisedButton(
              child: Text("5로 변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<ReactiveStateController>().putNumber(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
