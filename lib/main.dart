import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';
import 'package:sample_getx/src/user.dart';
import 'package:sample_getx/src/user_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  User user = User(name: "개남", age: 20, email: "mousai86@gmail.com");
  @override
  Widget build(BuildContext context) {
    Get.put(UserController(user: this.user), tag: "userController");
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
