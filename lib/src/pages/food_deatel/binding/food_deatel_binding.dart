import 'package:get/get.dart';
import 'package:get_x_exam/src/pages/food_deatel/controller/food_deatel_controller.dart';

class FoodDeatelBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => FoodDeatelController());
}
