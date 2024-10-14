import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_exam/src/infrastructure/theme_controller.dart';
import 'package:get_x_exam/src/japanes_restaurnat_app.dart';

void main() {
  Get.lazyPut(() => ThemeController());
  runApp(const JapaneseRestaurantApp());
}
