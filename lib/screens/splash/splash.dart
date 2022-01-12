import 'package:flutter/material.dart';
import 'package:flutter_base/screens/splash/splash_controller.dart';
import 'package:flutter_base/utils/common/image_const.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (SplashController controller) => Scaffold(
                body: Center(
              child: Lottie.asset(
                ImageConst.splash.getPath(),
                width: Get.size.width,
                height: Get.size.height,
                fit: BoxFit.cover,
              ),
            )));
  }
}
