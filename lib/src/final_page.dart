import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters["uid"]),
            RaisedButton(
              child: Text("잘못된 경로의 링크"),
              onPressed: () => Get.toNamed("/dddddd"),
            ),
          ],
        ),
      ),
    );
  }
}
