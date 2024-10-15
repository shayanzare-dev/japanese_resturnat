import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/dark_theme_color.dart';

class ThemeController extends GetxController {
  RxBool isDarkTheme = true.obs;

  ThemeData get restaurantTheme => isDarkTheme.value ? dark : light;

  void changeTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeTheme(isDarkTheme.value ? dark : light);
  }

  ThemeData dark = ThemeData(
    cardColor: DarkThemeColor.itemColor,
    primaryColor: DarkThemeColor.primaryColor,
    scaffoldBackgroundColor: DarkThemeColor.backgroundColor,
    textTheme: const TextTheme(
        titleLarge: TextStyle(
      color: DarkThemeColor.secondaryPrimaryColor,
    )),
    useMaterial3: true,
  );

  ThemeData light = ThemeData(
    primaryColor: Colors.black,
    textTheme: const TextTheme(),
  );
}