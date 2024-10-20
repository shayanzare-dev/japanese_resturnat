import 'package:get/get.dart';

import '../../../infrastructures/commons/theme_controller.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController());
    Get.lazyPut(
        () => HomeController(themeController: Get.find<ThemeController>()));
  }
}
