import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "${Get.parameters["name"] ?? ''}:${Get.parameters["age"] ?? ''}"),
              ],
            ),
            RaisedButton(
              child: Text("Go To First Page"),
              onPressed: () {
                Get.toNamed("firstPage");
                // Navigator.pushNamed(context, '/firstPage');
              },
            ),
            RaisedButton(
              child: Text("Go To First Page with replace"),
              onPressed: () {
                Get.offNamed("firstPage");
                // Navigator.pushReplacementNamed(context, '/firstPage');
              },
            ),
            RaisedButton(
              child: Text("Go To First Page pass arguments"),
              onPressed: () {
                Get.offNamed("firstPage", arguments: {"name": "개남", "age": 12});
                // Navigator.pushReplacementNamed(context, '/firstPage',
                //     arguments: {"name": "개남", "age": 12});
              },
            ),
          ],
        ),
      ),
    );
  }
}
