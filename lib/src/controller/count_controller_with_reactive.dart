import 'package:get/get.dart';

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxBool ck = false.obs;
  void increase() {
    count++;
  }

  void toggle() {
    ck(!ck.value);
  }
}
