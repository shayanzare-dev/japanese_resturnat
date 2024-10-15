import 'package:get/get.dart';

import '../../../infrastructure/theme_controller.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() =>
      Get.lazyPut(() => HomeController(themeController: ThemeController()));
}
