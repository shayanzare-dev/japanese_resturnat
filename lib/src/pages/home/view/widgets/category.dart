import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key, required this.controller, required this.onTapCategory});

  final HomeController controller;
  final void Function(int) onTapCategory;

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry space = const EdgeInsets.only(left: 32);
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: controller.categoryNames.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        if (index == controller.categoryNames.length) {
          space = EdgeInsets.zero;
        }
        return Padding(
          padding: space,
          child: _categoryItem(index),
        );
      },
    );
  }

  Widget _categoryItem(int index) => InkWell(
        onTap: () => onTapCategory(index),
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: controller.themeController.restaurantTheme.primaryColor,
              borderRadius: BorderRadius.circular(16)),
          child: Text(
            controller.categoryNames[index].tr,
            style:
                controller.themeController.restaurantTheme.textTheme.bodySmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );
}
