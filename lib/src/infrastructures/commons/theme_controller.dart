import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants//dark_theme_color.dart';

class ThemeController extends GetxController {
  RxBool isDarkTheme = true.obs;

  ThemeData get restaurantTheme => isDarkTheme.value ? _dark : _light;

  void changeTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeTheme(isDarkTheme.value ? _dark : _light);
  }

  final ThemeData _dark = ThemeData(
    iconTheme: const IconThemeData(
      color: DarkThemeColor.secondaryPrimaryColor,
    ),
    cardColor: DarkThemeColor.itemColor,
    primaryColor: DarkThemeColor.primaryColor,
    scaffoldBackgroundColor: DarkThemeColor.backgroundColor,
    toggleButtonsTheme: const ToggleButtonsThemeData(
      color: DarkThemeColor.toggleButton,
      fillColor: DarkThemeColor.primaryColor,
      selectedColor: DarkThemeColor.secondaryPrimaryColor,
    ),
    searchBarTheme: SearchBarThemeData(
        backgroundColor: const WidgetStatePropertyAll(DarkThemeColor.itemColor),
        elevation: const WidgetStatePropertyAll(0.0),
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.poppins(
            fontSize: 15,
            color: DarkThemeColor.secondaryPrimaryColor,
          ),
        )),
    textTheme: TextTheme(
        labelSmall: GoogleFonts.poppins(
          fontWeight: FontWeight.w200,
          fontSize: 15,
          color: DarkThemeColor.secondaryPrimaryColor,
        ),
        titleMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: DarkThemeColor.secondaryPrimaryColor,
        ),
         bodySmall: GoogleFonts.poppins(
           fontWeight: FontWeight.w500,
           fontSize: 12,
           color: DarkThemeColor.secondaryPrimaryColor,
         ),
        titleLarge: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: DarkThemeColor.secondaryPrimaryColor,
        )),
    useMaterial3: true,
  );

  final ThemeData _light = ThemeData(
    primaryColor: Colors.black,
    textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.blue)),
  );
}
