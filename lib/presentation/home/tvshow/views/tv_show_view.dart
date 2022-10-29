import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_apps/presentation/component/text.component.dart';
import 'package:movies_apps/presentation/home/controllers/tvshow.controller.dart';

class TvShowView extends GetView<TvShowController> {
  const TvShowView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: RefreshIndicator(
            onRefresh: ()async=>controller.onInit(),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(
                    height: 20.0,
                  ),

                  ///coming soon section
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: comtext.title(
                        text: 'Popular Tv Show', size: 18.0, color: Colors.white),
                  ),
                //  const ComingSoonView(),
                  const SizedBox(
                    height: 10.0,
                  ),

                  ///trending
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: comtext.title(
                        text: 'Top Rated Tv Show', size: 18.0, color: Colors.white),
                  ),
                 //const PopularMovieView(),

                  ///now playing
                  const SizedBox(
                    height: 20.0,
                  ),

                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: comtext.title(
                          text: 'On Air Tv Show', size: 18.0, color: Colors.white)),
                 // const NowPlayingView(),

                  ///toprated
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: comtext.title(
                          text: 'Airing Today', size: 18.0, color: Colors.white)),
                //  const TopRatedView(),

                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}