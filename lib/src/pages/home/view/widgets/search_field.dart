import 'package:flutter/material.dart';

import '../../controller/home_controller.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.controller, required this.hintText});

  final HomeController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      keyboardType: TextInputType.text,
      hintText: hintText,
      backgroundColor: controller
          .themeController.restaurantTheme.searchBarTheme.backgroundColor,
      elevation:
          controller.themeController.restaurantTheme.searchBarTheme.elevation,
      textStyle:
          controller.themeController.restaurantTheme.searchBarTheme.textStyle,
      leading: const Icon(
        Icons.search_rounded,
        color: Colors.white,
      ),
      controller: controller.searchFieldController,
      onTap: () {},
    );
  }
}
