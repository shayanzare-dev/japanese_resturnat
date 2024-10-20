import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class ChangeLocaleButton extends StatelessWidget {
  final HomeController homeController;

  const ChangeLocaleButton({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) => Obx(
        () => ToggleButtons(
            textStyle: homeController
                .themeController.restaurantTheme.textTheme.labelSmall,
            color: homeController
                .themeController.restaurantTheme.toggleButtonsTheme.color,
            fillColor: homeController
                .themeController.restaurantTheme.toggleButtonsTheme.fillColor,
            selectedColor: homeController.themeController.restaurantTheme
                .toggleButtonsTheme.selectedColor,
            disabledColor: Colors.white,
            borderRadius: BorderRadius.circular(12),
            onPressed: (index) => homeController.changeLocale(index),
            isSelected: homeController.selectedToggleButtons,
            children: const [
              Text('en'),
              Text('pa'),
            ]),
      );
}
