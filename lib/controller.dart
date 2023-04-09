import 'package:get/get.dart';

class Controller extends GetxController {
  var currentIndex = 0.obs;
  final isPersonClicked = false.obs;

  makeTrue() {
    isPersonClicked.value = true;
  }

  makeFalse() {
    isPersonClicked.value = false;
  }

  setIndex(int index) {
    currentIndex.value = index;
  }
}
