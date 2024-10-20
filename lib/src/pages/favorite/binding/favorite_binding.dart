import 'package:get/get.dart';
import '../controller/favorite_controller.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => FavoriteController());
}
