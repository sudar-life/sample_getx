import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class User {
  String name;
  int age;
  User({this.name, this.age});
}

class ReactiveStateController extends GetxController {
  RxInt count = 0.obs;
  Rx<User> user = User(name: "개남", age: 25).obs;
  RxList<String> d = [""].obs;
  void increment() {
    count++;
  }

  void putNumber(int number) {
    count(number);
  }

  void updateName(String nam) {
    user.update((u) {
      u.name = nam;
    });
  }

  void push() {
    d.add("1");
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("최초 호출"));
    debounce(count, (_) => print("마지막 변경에 한번만 시간차 두고 호출"),
        time: Duration(seconds: 1));
    interval(count, (_) => print("변경되고 있는 동안 1초 간격으로 호출"),
        time: Duration(seconds: 1));
    super.onInit();
  }
}
