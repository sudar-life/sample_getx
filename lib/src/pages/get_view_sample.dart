import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/count_controller_with_reactive.dart';
import 'package:sample_getx/src/controller/count_controller_with_update.dart';

class GetViewSampleWidget extends StatelessWidget {
  const GetViewSampleWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    Get.put(CountControllerWithUpdate());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView"),
      ),
      body: Center(child: Obx(() {
        return Column(
          children: [
            Text(Get.find<CountControllerWithReactive>().count.toString()),
            Text(Get.find<CountControllerWithUpdate>().count.toString()),
            RaisedButton(
              child: Text("increase"),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            RaisedButton(
              child: Text("increase"),
              onPressed: () {
                Get.find<CountControllerWithUpdate>().increase();
              },
            ),
          ],
        );
      })),
    );
  }
}
