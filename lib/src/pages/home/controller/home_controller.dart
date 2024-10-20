import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructures/commons/theme_controller.dart';

class HomeController extends GetxController {
  TextEditingController searchFieldController = TextEditingController();
  RxList<bool> selectedToggleButtons = [true, false].obs;
  final ThemeController themeController;
  Locale locale = const Locale('en');
  Locale fa = const Locale('fa');
  Locale en = const Locale('en');

  void _changeLocaleDesign(int index) {
    selectedToggleButtons.value =
        selectedToggleButtons.map((element) => element = false).toList();
    selectedToggleButtons[index] = !selectedToggleButtons[index];
  }

  void changeLocale(int index) {
    _changeLocaleDesign(index);
    if (selectedToggleButtons[1]) {
      Get.updateLocale(fa);
    } else {
      Get.updateLocale(en);
    }
  }

  List<String> categoryNames = [
    "sushi",
    "kebab",
    "tempura",
    "ramen",
    "burger",
  ];

  HomeController({required this.themeController});

  RxInt notificationCounter = 0.obs;
}
