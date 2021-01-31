import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SimpleStateControllerWithGetx extends GetxController {
  int count = 0;
  void increment() {
    count++;
    update();
  }
}

class SimpleStateControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
