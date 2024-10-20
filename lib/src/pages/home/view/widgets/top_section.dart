import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import 'change_locale_button.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'goodMorning'.tr,
          style:
              controller.themeController.restaurantTheme.textTheme.labelSmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'whatDoYouWantToEat'.tr,
              style: controller
                  .themeController.restaurantTheme.textTheme.titleLarge,
            ),
            ChangeLocaleButton(homeController: controller),
          ],
        ),
      ],
    );
  }
}
