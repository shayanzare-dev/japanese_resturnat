import 'package:get/get.dart';

import '../../pages/cart/binding/cart_binding.dart';
import '../../pages/cart/view/cart_screen.dart';
import '../../pages/favorite/binding/favorite_binding.dart';
import '../../pages/favorite/view/favorite_screen.dart';
import '../../pages/food_detail/binding/food_detail_binding.dart';
import '../../pages/food_detail/view/food_detail_screen.dart';
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
              binding: FoodDetailBinding())
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
