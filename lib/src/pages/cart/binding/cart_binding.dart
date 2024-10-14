import 'package:get/get.dart';
import 'package:get_x_exam/src/pages/cart/controller/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => CartController());
}
