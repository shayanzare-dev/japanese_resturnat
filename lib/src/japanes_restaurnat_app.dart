import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infrastructures/route/route_names.dart';
import 'infrastructures/route/route_pages.dart';
import 'infrastructures/utils/messages.dart';

class JapaneseRestaurantApp extends StatelessWidget {
  const JapaneseRestaurantApp({super.key});

/*  translations: Messages(), // your translations
  locale: Locale('en', 'US'), // translations will be displayed in that locale
  fallbackLocale: Locale('en', 'UK'), // specify the fallback locale in case an invalid locale is selected.
  );*/
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        //theme: controller.restaurantTheme(),
        translations: Messages(),
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        title: 'title'.tr,
        fallbackLocale: Get.fallbackLocale,
        initialRoute: RouteNames.homeScreen,
        getPages: RoutePage.pages,
      );
}
