import 'package:flutter_base/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_base/utils/extensions/extension.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    initialize();
  }

  void initialize() {
    4400.millSecDelay.then((dynamic value) => Get.off(() => HomeScreen()));
  }

  @override
  void onClose() {
    super.onClose();
  }
}
