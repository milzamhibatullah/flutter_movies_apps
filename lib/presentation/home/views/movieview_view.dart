import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../movie/controllers/movie_controller.dart';

class MovieviewView extends GetView<MovieController> {
  const MovieviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child:Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Container(
                height: Get.height/4,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                    image:const NetworkImage(
                      'https://image.tmdb.org/t/p/w500/7AiIrnDMaOhPrw9elJ5NNjijTW4.jpg',
                    )
                  )
                ),
                child: ,
              )

            ],
          ),
        ),
      ),
    );
  }
}
