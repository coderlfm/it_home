import 'package:get/get.dart';
import 'package:it_home/pages/circle/circle_controller.dart';
import 'package:it_home/pages/discover/discover_controller.dart';
import 'package:it_home/pages/home/home_controller.dart';
import 'package:it_home/pages/profile/profile_controller.dart';
import 'app_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());

    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CircleController());
    Get.lazyPut(() => DiscoverController());
    Get.lazyPut(() => ProfileController());
  }
}
