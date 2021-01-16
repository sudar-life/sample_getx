import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Show Snacbar"),
        onPressed: () {
          //original version
          // final snackBar = SnackBar(
          //   content: Text('Yay! A SnackBar!'),
          //   action: SnackBarAction(
          //     label: 'Undo',
          //     onPressed: () {},
          //   ),
          // );
          // Scaffold.of(context).showSnackBar(snackBar);

          //GetX version
          Get.snackbar(
            "Snacbar Title",
            "This will be Snackbar Message",
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("title Text", style: TextStyle(color: Colors.red)),
            messageText:
                Text("message Text", style: TextStyle(color: Colors.blue)),
            colorText: Colors.red,
            backgroundColor: Colors.black,
            borderRadius: 1,
            animationDuration: Duration(milliseconds: 1000),
            forwardAnimationCurve: Curves.bounceOut,
            duration: Duration(milliseconds: 3000),
            icon: Icon(Icons.send, color: Colors.white),
            onTap: (GetBar getBar) {
              print(getBar);
            },
            mainButton: FlatButton(
              child: Text("Button"),
              color: Colors.grey,
              onPressed: () {},
            ),
            overlayBlur: 5,
            overlayColor: Colors.black.withOpacity(0.3),
            backgroundGradient:
                LinearGradient(colors: [Colors.black, Colors.blue]),
          );
        },
      ),
    );
  }
}
