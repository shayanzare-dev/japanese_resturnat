import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_exam/gen/assets.gen.dart';

import '../../../infrastructures/utils/utils.dart';
import '../controller/home_controller.dart';
import 'widgets/category.dart';
import 'widgets/search_field.dart';
import 'widgets/top_section.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: ''),
        ]),
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: _body(context)),
      );

  Widget _appBar() => AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.casino_rounded,
            color: controller.themeController.restaurantTheme.iconTheme.color,
          ),
          onPressed: controller.themeController.changeTheme,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_pin,
              color: controller.themeController.restaurantTheme.primaryColor,
            ),
            Text('location'.tr,
                style: controller
                    .themeController.restaurantTheme.textTheme.titleMedium),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Badge.count(
              count: controller.notificationCounter.value,
              child: Icon(
                Icons.notifications_none_outlined,
                size: 20,
                color:
                    controller.themeController.restaurantTheme.iconTheme.color,
              ),
            ),
          ),
        ],
      );

  Widget _body(
    BuildContext context,
  ) =>
      Stack(
        children: [
          // background
          Obx(
            () => Container(
              width: double.infinity,
              height: double.infinity,
              color: controller
                  .themeController.restaurantTheme.scaffoldBackgroundColor,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _appBar(),
                  Padding(
                    padding: Utils.primaryEdgeInsetsGeometry,
                    child: TopSection(controller: controller),
                  ),
                  Padding(
                    padding: Utils.primaryEdgeInsetsGeometry,
                    child: SearchField(
                      controller: controller,
                      hintText: 'searchFood'.tr,
                    ),
                  ),
                  Padding(
                    padding: Utils.primaryEdgeInsetsGeometry,
                    child: Text(
                      'availableForYou'.tr,
                      style: controller.themeController.restaurantTheme
                          .textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Category(
                        controller: controller, onTapCategory: (index) {}),
                  ),
                  Image.asset(Assets.images.emptyCart.path),
                ],
              ),
            ),
          ),
        ],
      );
}