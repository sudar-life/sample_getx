import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("두번째 페이지"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("홈으로 이동"),
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                  Get.toNamed("/");
                },
              ),
              RaisedButton(
                child: Text("이전페이지로 이동"),
                onPressed: () {
                  Get.back();
                },
              ),
              RaisedButton(
                child: Text("홈으로 돌아가기"),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/", (route) => false);
                  Get.offAllNamed("/");
                },
              ),
            ],
          ),
        ));
  }
}
