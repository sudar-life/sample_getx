import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  showDialogWithNormal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Demo'),
          content: Text("Select button you want"),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context, "OK");
              },
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, "Cancel");
              },
            ),
          ],
        );
      },
    );
  }

  showDialogWithGetX() {
    Get.defaultDialog(
      title: "AlertDialog Demo",
      titleStyle: TextStyle(fontSize: 20),
      middleText: "Select button you want",
      middleTextStyle: TextStyle(fontSize: 15),
      radius: 10,
      content: Text("override middleText"),
      textCancel: "cancel",
      textConfirm: "confirm",
      confirmTextColor: Colors.white,
      onCancel: () {
        Get.back();
      },
      onConfirm: () {},
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dialog with getX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Show Dialog!"),
              onPressed: () {
                showDialogWithNormal(context);
              },
            ),
            RaisedButton(
              child: Text("Show Dialog with getX!"),
              onPressed: () {
                showDialogWithGetX();
              },
            ),
          ],
        ),
      ),
    );
  }
}
