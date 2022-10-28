import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/movie_controller.dart';

class MovieView extends GetView<MovieController> {
  const MovieView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      appBar: AppBar(
        title: const Text('MovieView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MovieView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
