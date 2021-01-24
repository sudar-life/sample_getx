import 'package:get/get_state_manager/get_state_manager.dart';

class CountControllerWithUpdate extends GetxController {
  int count = 0;
  void increase() {
    count++;
    update();
  }
}
