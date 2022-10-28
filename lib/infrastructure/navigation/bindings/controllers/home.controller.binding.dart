import 'package:get/get.dart';

import 'package:movies_apps/presentation/home/movie/controllers/movie_controller.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieController>(
      () => MovieController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
