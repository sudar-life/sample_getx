import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/manage.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  ManageController _manageController;

  @override
  Widget build(BuildContext context) {
    _manageController = Get.find<ManageController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple State management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ManageController>(
              builder: (_) {
                return Text(
                    "${_manageController.name} : ${_manageController.count}");
              },
            ),
            RaisedButton(
                child: Text("이름바꾸기"), onPressed: _manageController.updateName),
            RaisedButton(
                child: Text("increase"),
                onPressed: _manageController.increaseCount),
          ],
        ),
      ),
    );
  }
}
