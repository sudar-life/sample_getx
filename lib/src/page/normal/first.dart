import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';
import 'package:sample_getx/src/page/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("첫번째 페이지"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("다음 페이지 이동"),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (BuildContext context) => SecondPage(),
                  // ));
                  Get.to(SecondPage(), transition: Transition.topLevel);
                },
              ),
              RaisedButton(
                child: Text("이전페이지로 이동"),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Get.back();
                },
              ),
              RaisedButton(
                child: Text("홈으로 이동"),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home()),
                      (route) => false);
                  // Get.offAll(Home());
                },
              )
            ],
          ),
        ));
  }
}
