import 'package:get/get.dart';
import './circle_controller.dart';

class CircleBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(CircleController());
    }
}