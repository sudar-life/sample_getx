import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sample extends StatelessWidget {
  const Sample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.parameters["uid"]),
      ),
    );
  }
}
