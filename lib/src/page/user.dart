import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';
import 'package:sample_getx/src/page/normal/second.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("parmas 받기"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${Get.parameters["uid"]} 회원님"),
              Text("당신의 이름은 : ${Get.parameters["name"]}"),
              Text("당신의 나이는 : ${Get.parameters["age"]}"),
              RaisedButton(
                child: Text("홈으로 이동"),
                onPressed: () {
                  Get.offAll(Home());
                },
              )
            ],
          ),
        ));
  }
}
