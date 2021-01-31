import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SimpleStateControllerWithGetx extends GetxController {
  int count = 0;
  void increment() {
    count++;
    update();
  }

  void putNumber(int number) {
    count = number;
    update();
  }

  void incrementForId(String id) {
    count++;
    update([id]);
  }
}

class SimpleStateControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
