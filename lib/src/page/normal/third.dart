import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.previousRoute);
    return Scaffold(
        appBar: AppBar(
          title: Text("세번째 페이지"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("홈으로 이동"),
                onPressed: () {
                  Get.to(Home());
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
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home()),
                      (route) => false);

                  // Get.offAll(Home());
                },
              ),
            ],
          ),
        ));
  }
}
