import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movies_apps/presentation/component/text.component.dart';
import 'package:movies_apps/presentation/home/movie/controllers/movie_controller.dart';
import 'package:get/get.dart';


class DetailMovieView extends GetView<MovieController> {
  DetailMovieView({Key? key}) : super(key: key);
  var samples = ['drama', 'action', 'comedy', 'romance', 'scifi'];
  @override
  Widget build(BuildContext context) {
    controller.getDetailMovie();
    final detail = controller.detailMovie.value;
    return WillPopScope(
        child: Scaffold(
          backgroundColor: const Color(0xFF212121),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: const Color(0xFF212121),
                elevation: 0.0,
                expandedHeight: Get.height / 2,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://image.tmdb.org/t/p/w500/${detail.posterPath}',
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.5),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),

                      ///imdb section
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6.0, horizontal: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.red,
                            ),
                            child: comtext.title(
                                text: 'IMDB ${detail.voteAverage!.ceilToDouble()}', color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.star_outlined,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          comtext.title(text: detail.voteAverage.toString().substring(0,3), color: Colors.red),
                          const SizedBox(
                            width: 6.0,
                          ),
                          comtext.regular(
                              text: '(${NumberFormat.compact().format(detail.voteCount)}) reviews',
                              size: 14.0,
                              color: Colors.white)
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      ///title section
                      comtext.title(
                          text: detail.title, color: Colors.white, size: 24.0),
                      const SizedBox(
                        height: 10.0,
                      ),

                      ///tagline section
                      comtext.regular(
                          text: detail.tagline,
                          color: Colors.white,
                          size: 16.0),

                      ///genre section
                      const SizedBox(
                        height: 10.0,
                      ),

                      ///genre section
                      detail.genres!=null && detail.genres!.isNotEmpty?Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: detail.genres
                            !.map(
                              (e) => Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6.0, horizontal: 16.0),
                                margin: const EdgeInsets.only(
                                    right: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Colors.black,
                                ),
                                child: comtext.title(
                                    text: e.name,
                                    color: Colors.white,
                                    size: 12.0),
                              ),
                            )
                            .toList(),
                      ):const SizedBox(height: 0.0,),
                      const SizedBox(
                        height: 20.0,
                      ),

                      ///overview
                      comtext.title(
                          text: 'Synopsis', size: 24.0, color: Colors.white),
                      const SizedBox(
                        height: 16.0,
                      ),
                      comtext.regular(
                          text:detail.overview,
                          color: Colors.white,
                          size: 16.0),
                      const SizedBox(
                        height: 20.0,
                      ),

                      comtext.title(
                          text: 'Release Date',
                          size: 24.0,
                          color: Colors.white),
                      const SizedBox(
                        height: 10.0,
                      ),
                      comtext.regular(
                          text: DateFormat('MMMM, dd yyyy').format(DateTime.parse(detail.releaseDate!)).toString(),
                          color: Colors.white,
                          size: 16.0),
                      const SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: Size(Get.width, 50.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
                          ),
                          child: comtext.title(
                              text: 'add to watching list',color: Colors.white, size: 16.0)),
                      SizedBox(
                        height: Get.height/6,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onWillPop: () async {
          controller.movieId.value = 0;
          return true;
        });
  }
}
