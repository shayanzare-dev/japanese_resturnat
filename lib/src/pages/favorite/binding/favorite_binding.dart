import 'package:get/get.dart';
import 'package:get_x_exam/src/pages/favorite/controller/favorite_controller.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => FavoriteController());
}
