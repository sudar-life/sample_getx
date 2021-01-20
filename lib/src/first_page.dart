import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  Map<String, dynamic> arguments;
  FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Get.arguments != null) {
      this.arguments = Get.arguments;
    }
    if (ModalRoute.of(context).settings.arguments != null) {
      this.arguments = ModalRoute.of(context).settings.arguments;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            arguments != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${arguments["name"]}:${arguments["age"]}"),
                    ],
                  )
                : Container(),
            RaisedButton(
              child: Text("Go To Second Page"),
              onPressed: () {
                Get.toNamed("secondPage");
                // Navigator.pushNamed(context, '/secondPage');
              },
            ),
            RaisedButton(
              child: Text("Go To Second Page with replace"),
              onPressed: () {
                Get.offNamed("secondPage");
                // Navigator.pushReplacementNamed(context, '/secondPage');
              },
            ),
            RaisedButton(
              child: Text("Go To Second Page with dynamic link"),
              onPressed: () {
                Get.offNamed("secondPage?name=개남&age=24");
                // Navigator.pushReplacementNamed(
                //     context, '/secondPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
