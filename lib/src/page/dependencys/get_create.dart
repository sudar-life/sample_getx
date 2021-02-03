import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/dependency_controller.dart';

class GetCreate extends StatelessWidget {
  const GetCreate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RaisedButton(
        onPressed: () {
          print(Get.find<DependencyController>().hashCode);
        },
      ),
    );
  }
}
