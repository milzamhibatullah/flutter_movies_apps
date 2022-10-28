import 'dart:developer';

import 'package:get/get.dart';
import 'package:movies_apps/infrastructure/navigation/routes.dart';
import 'package:movies_apps/presentation/screens.dart';

class SplashController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void nextToHome()=>Future.delayed(const Duration(seconds: 3),()async=>await Get.offNamed(Routes.HOME));
}
