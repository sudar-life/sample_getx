import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Go To First Page"),
              onPressed: () {
                Get.toNamed("firstPage");
                // Navigator.pushNamed(context, '/firstPage');
              },
            ),
            RaisedButton(
              child: Text("Go To Second Page"),
              onPressed: () {
                Get.toNamed("secondPage");
                // Navigator.pushNamed(context, '/secondPage');
              },
            ),
            RaisedButton(
              child: Text("Final Page"),
              onPressed: () {
                Get.toNamed("finalPage/877");
                // Navigator.pushNamed(context, '/secondPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
