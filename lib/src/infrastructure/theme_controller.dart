import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDarkTheme = false.obs;

  RxString themeChangeTextTitle = 'change to dark'.obs;

  ThemeData restaurantTheme() =>
      isDarkTheme.value ? ThemeData.dark() : ThemeData.light();

  void changeTheme() {
    isDarkTheme.value = !isDarkTheme.value;

    if (isDarkTheme.value) {
      themeChangeTextTitle.value = 'change to light';
    } else {
      themeChangeTextTitle.value = 'change to dark';
    }
    Get.changeTheme(isDarkTheme.value
        ? dark(
            primaryColor: Colors.red,
            textTheme: const TextTheme(titleLarge: TextStyle()),
          )
        : light(
            primaryColor: const Color(0xfffd8629),
            textTheme: const TextTheme()));
  }

  ThemeData dark({
    required Color primaryColor,
    required TextTheme textTheme,
  }) =>
      ThemeData(
          primaryColor: primaryColor,
          textTheme: textTheme,
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xff18172B));

  ThemeData light({required Color primaryColor, required TextTheme textTheme}) {
    return ThemeData(primaryColor: primaryColor, textTheme: textTheme);
  }
}
