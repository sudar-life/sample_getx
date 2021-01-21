import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/page/reactive_state_increase.dart';
import 'package:sample_getx/src/page/stateful_increase.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful vs ReactiveState"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("State full Increase"),
              onPressed: () {
                Get.to(StatefulIncrease());
              },
            ),
            RaisedButton(
              child: Text("reactive state getX Increase"),
              onPressed: () {
                Get.to(ReactiveStateIncrease());
              },
            ),
          ],
        ),
      ),
    );
  }
}
