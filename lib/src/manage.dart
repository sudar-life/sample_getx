import 'package:get/get_state_manager/get_state_manager.dart';

class ManageController extends GetxController {
  int count = 0;
  String name = "개남";

  void updateName() {
    name = "개발하는남자";
    update();
  }

  void increaseCount() {
    count++;
    update(["countUpdate"]);
  }
}
