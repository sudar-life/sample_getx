import 'package:flutter/material.dart';

class StatefulIncrease extends StatefulWidget {
  StatefulIncrease({Key key}) : super(key: key);

  @override
  _StatefulIncreaseState createState() => _StatefulIncreaseState();
}

class _StatefulIncreaseState extends State<StatefulIncrease> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("stateful build");
    return Scaffold(
      appBar: AppBar(
        title: Text("ReactiveState"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            RaisedButton(
              child: Text("더하기"),
              onPressed: increase,
            ),
          ],
        ),
      ),
    );
  }
}
