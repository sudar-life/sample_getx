import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_getx/src/change_manage.dart';

class PageWithProvider extends StatelessWidget {
  PageWithProvider({Key key}) : super(key: key);
  ChangeManager _changeManager;

  @override
  Widget build(BuildContext context) {
    _changeManager = Provider.of<ChangeManager>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple State management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ChangeManager>(builder: (_, changeManager, child) {
              return Text("${changeManager.name} : ${changeManager.count}");
            }),
            RaisedButton(
                child: Text("이름바꾸기"), onPressed: _changeManager.updateName),
            RaisedButton(
                child: Text("increase"),
                onPressed: _changeManager.increaseCount),
          ],
        ),
      ),
    );
  }
}
