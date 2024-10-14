import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_exam/src/pages/home/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.casino_outlined),
          onPressed: controller.themeController.changeTheme,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_pin,
              color: themeData.primaryColor,
            ),
            Text(
              'Location',
              style: TextStyle(color: themeData.primaryColor),
            ),
          ],
        ),
      ),
      body: SafeArea(child: _body()),
    );
  }

  Widget _body() => Column(
        children: [],
      );
}
