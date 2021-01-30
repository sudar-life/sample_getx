import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';
import 'package:sample_getx/src/page/normal/second.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("arguments 받기"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Get.arguments),
              // Text(Get.arguments.toString()),
              // Text("${Get.arguments["name"]} : ${Get.arguments["age"]}"),
              // Text(
              //     "${(Get.arguments as User).name} : ${(Get.arguments as User).age}"),
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
