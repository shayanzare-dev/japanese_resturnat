import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_exam/src/infrastructure/route/route_pages.dart';

import 'infrastructure/route/route_path.dart';
import 'infrastructure/theme_controller.dart';

class JapaneseRestaurantApp extends GetView<ThemeController> {
  const JapaneseRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        theme:
            controller.restaurantTheme(),
        debugShowCheckedModeBanner: false,
        title: 'japanese-resturant',
        initialRoute: RoutePath.homeScreen,
        getPages: RoutePage.pages,
      );
}
