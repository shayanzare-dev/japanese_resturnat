import 'package:get/get.dart';
import 'package:get_x_exam/src/infrastructure/theme_controller.dart';
import 'package:get_x_exam/src/pages/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  ThemeController themeController = ThemeController();

  @override
  void dependencies() =>
      Get.lazyPut(() => HomeController(themeController: themeController));
}
