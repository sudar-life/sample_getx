import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("알수 없는 페이지"),
      ),
    );
  }
}
