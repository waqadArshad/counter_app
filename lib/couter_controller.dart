import 'package:get/get.dart';

class CounterController extends GetxController {
  static CounterController instance = Get.find<CounterController>();
  RxInt _counter = 0.obs;

  RxInt get counter => _counter;
  double multiplier = 20;

  void increment() {
    _counter++;
    multiplier = _counter > 100 ? _counter > 1000 ? _counter > 10000 ? _counter > 100000 ? _counter > 10000000 ? 15 : 18 : 21 : 24 : 27 : 30;
  }

  void decrement() {
    if(_counter > 1) _counter--;
    multiplier = _counter > 100 ? _counter > 1000 ? _counter > 10000 ? _counter > 100000 ? _counter > 10000000 ? 15 : 18 : 21 : 24 : 27 : 30;
  }

  void reset() {
    _counter.value = 0;
    multiplier = 30;
  }
}
