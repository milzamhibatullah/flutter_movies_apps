import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../movie/controllers/movie_controller.dart';

class MovieviewView extends GetView<MovieController> {
  const MovieviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MovieviewView'),
        centerTitle: true,
      ),
      body: Obx(()=>controller.isLoading.value==true?CircularProgressIndicator():Center(
        child: Text(
          '${controller.topRatedMovies.value.results!.length}',
          style: TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}
