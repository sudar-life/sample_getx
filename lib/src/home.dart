import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/pages/get_view_widget.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Get View"),
              onPressed: () {
                Get.to(GetViewWidget());
              },
            ),
          ],
        ),
      ),
    );
  }
}
