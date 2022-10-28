import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movies_apps/presentation/component/text.component.dart';

import '../movie/controllers/movie_controller.dart';

class MovieviewView extends GetView<MovieController> {
  const MovieviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // controller.onInit();
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
                Container(
                  width: Get.width,
                  height: Get.height / 4,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 16.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.darken),
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                            'https://image.tmdb.org/t/p/w500/7AiIrnDMaOhPrw9elJ5NNjijTW4.jpg',
                          ))),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Wrap(
                          children: [
                            comtext.title(
                                text: 'Orphan: First Kill',
                                color: Colors.white.withOpacity(0.7),
                                size: 16.0),
                            const SizedBox(
                              height: 10.0,
                            ),
                            comtext.regularElipsis(
                              text:
                                  'After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. But when her mask starts to slip, she is put against a mother who will protect her family from the murderous “child” at any cost.',
                              color: Colors.white.withOpacity(0.8),
                              maxLine: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                ///trending
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: comtext.title(
                      text: 'Trending', size: 18.0, color: Colors.white),
                ),
                Container(
                  height: Get.height / 3,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: Get.width / 2.5,
                        height: Get.height / 4,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        margin: EdgeInsets.only(left: 10.0, top: 20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                  'https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
                                ))),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: 0,
                              child: CircleAvatar(
                                child: comtext.title(text: '1',color: Colors.white),
                                radius: 14.0,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width / 2.5,
                        height: Get.height / 4,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        margin: EdgeInsets.only(left: 14.0, top: 20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: const NetworkImage(
                                  'https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
                                ))),
                      ),
                    ],
                  ),
                ),

                ///now playing
                const SizedBox(
                  height: 10.0,
                ),

                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: comtext.title(
                        text: 'Now Playing', size: 18.0, color: Colors.white)),
                Container(
                  height: Get.height / 3,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: Get.width / 1.5,
                        margin: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.width / 1.5,
                              height: Get.height / 6,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: const NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/yw8NQyvbeNXoZO6v4SEXrgQ27Ll.jpg',
                                      ))),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.title(
                                  text: 'Black Adams',
                                  color: Colors.white,
                                  size: 14.0),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.regularElipsis(
                                  text:
                                      'After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent.',
                                  color: Colors.white,
                                  maxLine: 3,
                                  size: 12.0),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width / 1.5,
                        margin: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.width / 1.5,
                              height: Get.height / 6,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: const NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/tIX6j3NzadlwGcJ52nuWdmtOQkg.jpg',
                                      ))),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.title(
                                  text: 'Black Adams',
                                  color: Colors.white,
                                  size: 14.0),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.regularElipsis(
                                  text:
                                      'After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent.',
                                  color: Colors.white,
                                  maxLine: 3,
                                  size: 12.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                ///toprated
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: comtext.title(
                        text: 'Top Rated', size: 18.0, color: Colors.white)),
                Container(
                  height: Get.height / 3,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: Get.width / 1.5,
                        margin: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.width / 1.5,
                              height: Get.height / 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: const NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/rSPw7tgCH9c6NqICZef4kZjFOQ5.jpg',
                                      ))),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.title(
                                  text: 'Black Adams',
                                  color: Colors.white,
                                  size: 14.0),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: comtext.regularElipsis(
                                      text: '8.7',
                                      color: Colors.white,
                                      maxLine: 3,
                                      size: 12.0),
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.yellow,
                                  size: 10.0,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.regularElipsis(
                                  text:
                                      'After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent.',
                                  color: Colors.white,
                                  maxLine: 2,
                                  size: 12.0),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width / 1.5,
                        margin: EdgeInsets.only(left: 14.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.width / 1.5,
                              height: Get.height / 6,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: const NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/tIX6j3NzadlwGcJ52nuWdmtOQkg.jpg',
                                      ))),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.title(
                                  text: 'Black Adams',
                                  color: Colors.white,
                                  size: 14.0),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: comtext.regular(
                                      text: '8.7',
                                      color: Colors.white,
                                      size: 12.0),
                                ),
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.yellow,
                                  size: 10.0,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: comtext.regularElipsis(
                                  text:
                                      'After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent.',
                                  color: Colors.white,
                                  maxLine: 2,
                                  size: 12.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

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
