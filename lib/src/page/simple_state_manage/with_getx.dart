import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/simple_state_controller.dart';

class WithGetx extends StatelessWidget {
  const WithGetx({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Getx", style: TextStyle(fontSize: 30)),
          GetBuilder<SimpleStateControllerWithGetx>(
            id: "test",
            builder: (controller) => Text(
              "${controller.count}",
              style: TextStyle(fontSize: 50),
            ),
          ),
          GetBuilder<SimpleStateControllerWithGetx>(
            builder: (controller) {
              print("update!!");
              return Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          RaisedButton(
            child: Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {
              Get.find<SimpleStateControllerWithGetx>().increment();
              // Get.find<SimpleStateControllerWithGetx>().incrementForId("test");
            },
          ),
          RaisedButton(
            child: Text("5로 변경", style: TextStyle(fontSize: 30)),
            onPressed: () {
              Get.find<SimpleStateControllerWithGetx>().putNumber(5);
              // Get.find<SimpleStateControllerWithGetx>().incrementForId("test");
            },
          ),
        ],
      ),
    );
  }
}
