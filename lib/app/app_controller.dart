import 'package:get/get.dart';

class AppController extends GetxController {
  int currentIndex = 0;

  changeCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}
