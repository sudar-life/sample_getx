import 'package:get/get.dart';
import 'package:sample_getx/src/user.dart';

class UserController extends GetxController {
  Rx<User> user;
  UserController({User user}) {
    this.user = user.obs;
  }

  void changeUsername(String username) {
    user.update((u) {
      u.name = username;
    });
  }
}
