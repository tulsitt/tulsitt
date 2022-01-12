import 'package:flutter/material.dart';
import 'package:flutter_base/commoncompant/loader.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          getLoader(),

        ],
      ),
    );
  }
}
