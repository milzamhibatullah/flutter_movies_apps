import 'package:flutter/material.dart';
import 'package:movies_apps/presentation/component/text.component.dart';
import 'package:movies_apps/presentation/home/movie/controllers/movie_controller.dart';
import 'package:get/get.dart';

class DetailMovieView extends GetView<MovieController> {
  const DetailMovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: comtext.title(text: 'Details'),
          ),
        ),
        onWillPop: () async {
          controller.movieId.value = 0;
          controller.fetchDetail.value = false;
          return true;
        });
  }
}
