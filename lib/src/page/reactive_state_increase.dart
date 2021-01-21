import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateIncrease extends StatelessWidget {
  ReactiveStateIncrease({Key key}) : super(key: key);
  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    print("reactive build");
    return Scaffold(
      appBar: AppBar(
        title: Text("ReactiveState"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            RaisedButton(
              child: Text("더하기"),
              onPressed: increase,
            ),
          ],
        ),
      ),
    );
  }
}
