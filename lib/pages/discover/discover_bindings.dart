import 'package:get/get.dart';
import './discover_controller.dart';

class DiscoverBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(DiscoverController());
    }
}