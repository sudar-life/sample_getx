import 'package:flutter/material.dart';

class ChangeManager extends ChangeNotifier {
  int count = 0;
  String name = "개남";

  void updateName() {
    name = "개발하는남자";
  }

  void increaseCount() {
    count++;
    notifyListeners();
  }
}
