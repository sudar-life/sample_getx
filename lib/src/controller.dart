import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increase() {
    count++;
    update();
  }

  @override
  void onInit() {
    // 모니터링중인 count 의 업데이트 순간마다 호출
    ever(count, (_) => print("Every Time"));

    // 모니터링중인 count 의 업데이트되는 최초 순간만 호출
    once(count, (_) => print("once"));

    // 모니터링중인 count의 업데이트 되는 가장 마지막 이벤트이후 duration 뒤에 호출
    debounce(count, (_) => print("debounce"), time: Duration(seconds: 1));

    // 모니터링중인 count의 업데이트 이후 1초마다 호출
    interval(count, (_) => print("interval"), time: Duration(seconds: 1));
    super.onInit();
  }
}
