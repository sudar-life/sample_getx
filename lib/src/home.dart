import 'package:flutter/material.dart';
import 'package:sample_getx/src/user.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/user_controller.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserController userController = Get.find(tag: "userController");
    return Scaffold(
      appBar: AppBar(
        title: Text("Rx State Management with Class"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "${userController.user.value.name} : ${userController.user.value.age} \n ${userController.user.value.email}",
              );
            }),
            RaisedButton(
              child: Text("change name"),
              onPressed: () {
                userController.changeUsername("개발하는남자1");
              },
            )
          ],
        ),
      ),
    );
  }
}
