import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_exam/src/infrastructure/theme_controller.dart';

class HomeScreen extends GetView<ThemeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: controller.restaurantTheme.scaffoldBackgroundColor,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.casino_outlined,
              color: controller.restaurantTheme.colorScheme.secondary,
            ),
            onPressed: controller.changeTheme,
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                color: controller.restaurantTheme.primaryColor,
              ),
              Text('Location',
                  style: controller.restaurantTheme.textTheme.titleLarge),
            ],
          ),
        ),
        body: SafeArea(child: _body()),
      ),
    );
  }

  Widget _body() => Column(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 100,
          //   width: 100,
          // ),
          SizedBox(
            width: 100,
            height: 100,
            child: Card(
              child: Column(
                children: [Text('data')],
              ),
            ),
          ),
        ],
      );
}