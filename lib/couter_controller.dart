import 'package:get/get.dart';

class CounterController extends GetxController {
  static CounterController instance = Get.find<CounterController>();
  RxInt _counter = 0.obs;

  RxInt get counter => _counter;
  double multiplier = 30;

  void increment() {
    _counter++;
    multiplier = _getSize(_counter.value);
    // _counter > 100
    //     ? _counter > 1000
    //         ? _counter > 10000
    //             ? _counter > 100000
    //                 ? _counter > 10000000
    //                     ? 15
    //                     : 18
    //                 : 21
    //             : 24
    //         : 27
    //     : 30;
  }

  void decrement() {
    if (_counter > 1) _counter--;
    multiplier = _getSize(_counter.value);
  }

  void reset() {
    _counter.value = 0;
    multiplier = 30;
  }

  double _getSize(int count) {
    if (count > 10000000) {
      return 15;
    } else if (count > 100000) {
      return 18;
    } else if (count > 100000) {
      return 21;
    } else if (count > 10000) {
      return 24;
    } else if (count > 1000) {
      return 27;
    } else if (count > 100) {
      return 30;
    } else {
      return 30;
    }
  }
}
