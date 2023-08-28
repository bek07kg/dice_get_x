import 'dart:math';

import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftDice = 3.obs;
  RxInt rightDice = 1.obs;

  void ontab() {
    leftDice.value = Random().nextInt(7);
    rightDice.value = Random().nextInt(7);
  }

  int test(int count) {
    if (count == 0) {
      return 1;
    } else {
      return count;
    }
  }
}
