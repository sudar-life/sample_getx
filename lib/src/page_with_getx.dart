import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/manage.dart';

class PageWithGetx extends StatelessWidget {
  PageWithGetx({Key key}) : super(key: key);
  ManageController _manageController;

  @override
  Widget build(BuildContext context) {
    _manageController = Get.find<ManageController>();
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<ManageController>(
          builder: (_) {
            return Text(
                "${_manageController.name} : 의 상태관리 ${_manageController.count}");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ManageController>(
              id: "countUpdate",
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
