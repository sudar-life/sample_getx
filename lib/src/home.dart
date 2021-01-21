import 'package:flutter/material.dart';
import 'package:sample_getx/src/user.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  Rx<User> user = User(name: "개남", email: "mousai86@gmail.com", age: 22).obs;

  @override
  Widget build(BuildContext context) {
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
                "${user.value.name} : ${user.value.age} \n ${user.value.email}",
              );
            }),
            RaisedButton(
              child: Text("change name"),
              onPressed: () {
                user.update((u) {
                  u.name = "개발하는남자";
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
