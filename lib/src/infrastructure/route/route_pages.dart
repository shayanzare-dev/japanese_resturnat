import 'package:get/get.dart';

import '../../pages/cart/binding/cart_binding.dart';
import '../../pages/cart/view/cart_screen.dart';
import '../../pages/favorite/binding/favorite_binding.dart';
import '../../pages/favorite/view/favorite_screen.dart';
import '../../pages/food_deatel/binding/food_deatel_binding.dart';
import '../../pages/food_deatel/view/food_deatel_screen.dart';
import '../../pages/home/binding/home_binding.dart';
import '../../pages/home/view/home_screen.dart';
import 'route_path.dart';

class RoutePage {
  static List<GetPage> pages = [
    GetPage(
        name: RoutePath.homeScreen,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(
              name: RoutePath.foodDeatelScreen,
              page: () => const FoodDeatelScreen(),
              binding: FoodDeatelBinding())
        ]),
    GetPage(
        name: RoutePath.favoriteScreen,
        page: () => const FavoriteScreen(),
        binding: FavoriteBinding()),
    GetPage(
        name: RoutePath.cartScreen,
        page: () => const CartScreen(),
        binding: CartBinding()),
  ];
}
