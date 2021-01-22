import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sample_getx/src/controller.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Worker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (contoller) {
                return Text(contoller.count.toString());
              },
            ),
            RaisedButton(
              child: Text("증가"),
              onPressed: () {
                counterController.increase();
              },
            )
          ],
        ),
      ),
    );
  }
}
