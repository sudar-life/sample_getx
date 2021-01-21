import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  var count = 0.abs();

  void increase() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
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
