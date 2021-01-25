import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/count_controller_with_reactive.dart';
import 'package:sample_getx/src/controller/count_controller_with_update.dart';

class GetViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    Get.put(CountControllerWithUpdate());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: GetViewWithReactive()),
            Expanded(child: GetViewWithUpdate())
          ],
        ),
      ),
    );
  }
}

class GetViewWithReactive extends GetView<CountControllerWithReactive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.count.toString())),
          RaisedButton(
            child: Text("increase"),
            onPressed: () {
              controller.increase();
            },
          ),
          Obx(() => Text(controller.ck.toString())),
          RaisedButton(
            child: Text("increase"),
            onPressed: () {
              controller.toggle();
            },
          ),
        ],
      ),
    );
  }
}

class GetViewWithUpdate extends GetView<CountControllerWithUpdate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CountControllerWithUpdate>(
            builder: (controller) => Text(
              controller.count.toString(),
            ),
          ),
          RaisedButton(
            child: Text("increase"),
            onPressed: () {
              controller.increase();
            },
          ),
        ],
      ),
    );
  }
}
