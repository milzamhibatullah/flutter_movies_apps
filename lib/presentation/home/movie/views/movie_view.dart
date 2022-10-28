import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movies_apps/presentation/component/text.component.dart';
import 'package:movies_apps/presentation/home/movie/views/coming_soon_view.dart';
import 'package:movies_apps/presentation/home/movie/views/now_playing_view.dart';
import 'package:movies_apps/presentation/home/movie/views/popular_movie_view.dart';
import 'package:movies_apps/presentation/home/movie/views/top_rated_view.dart';

import '../controllers/movie_controller.dart';

class MovieView extends GetView<MovieController> {
  const MovieView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Obx(()=>controller.isTopRatedLoading.value==true?const CircularProgressIndicator():Center(
                //   child: Text(
                //     '${controller.topRatedMovies.value.results!.length}',
                //     style: const TextStyle(fontSize: 20),
                //   ),
                // )),
                // const SizedBox(height: 20.0,),
                // Obx(()=>controller.isNowPlayLoading.value==true?const CircularProgressIndicator():Center(
                //   child: Text(
                //     '${controller.nowPlayingMovies.value.results!.length}',
                //     style: const TextStyle(fontSize: 20),
                //   ),
                // )),
                // const SizedBox(height: 20.0,),
                // Obx(()=>controller.isUpcomingLoading.value==true?const CircularProgressIndicator():Center(
                //   child: Text(
                //     '${controller.upcomingMovies.value.results!.length}',
                //     style: const TextStyle(fontSize: 20),
                //   ),
                // )),
                // const SizedBox(height: 20.0,),
                // Obx(()=>controller.isPopularLoading.value==true?const CircularProgressIndicator():Center(
                //   child: Text(
                //     '${controller.popularMovies.value.results!.length}',
                //     style: const TextStyle(fontSize: 20),
                //   ),
                // )),
                const SizedBox(
                  height: 20.0,
                ),

                ///coming soon section
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: comtext.title(
                      text: 'Coming Soon', size: 18.0, color: Colors.white),
                ),
                const ComingSoonView(),
                const SizedBox(
                  height: 10.0,
                ),

                ///trending
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: comtext.title(
                      text: 'Trending', size: 18.0, color: Colors.white),
                ),
                const PopularMovieView(),

                ///now playing
                const SizedBox(
                  height: 20.0,
                ),

                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: comtext.title(
                        text: 'Now Playing', size: 18.0, color: Colors.white)),
                const NowPlayingView(),

                ///toprated
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: comtext.title(
                        text: 'Top Rated', size: 18.0, color: Colors.white)),
               const TopRatedView(),

                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
