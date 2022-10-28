import 'dart:developer';

import 'package:get/get.dart';
import 'package:movies_apps/domain/movie/detail.movie.model.dart';
import 'package:movies_apps/domain/movie/now.playing.model.dart';
import 'package:movies_apps/domain/movie/popular.movie.model.dart';
import 'package:movies_apps/domain/movie/repository/detail.movie.repository.dart';
import 'package:movies_apps/domain/movie/repository/now.playing.repository.dart';
import 'package:movies_apps/domain/movie/repository/popular.repository.dart';
import 'package:movies_apps/domain/movie/repository/toprated.repository.dart';
import 'package:movies_apps/domain/movie/repository/upcoming.repository.dart';
import 'package:movies_apps/domain/movie/toprated.model.dart';
import 'package:movies_apps/domain/movie/upcoming.model.dart';

class MovieController extends GetxController {
  ///config
  final movieId = 0.obs;
  ///movie object
  var topRatedMovies = TopRatedModel().obs;
  var nowPlayingMovies = NowPlayingModel().obs;
  var upcomingMovies = MovieUpcomingModel().obs;
  var popularMovies = PopularMovieModel().obs;
  var detailMovie = DetailMovieModel().obs;

  ///all repository
  final _topRatedRepository = TopRatedRepository();
  final _nowPlayingRepository = NowPlayingRepository();
  final _upcomingMovieRepository = UpcomingMovieRepository();
  final _popularMovieRepository = PopularMovieRespository();
  final _detailMovieRepository=DetailMovieRepository();

  ///all state loading
  final isTopRatedLoading=false.obs;
  final isNowPlayLoading=false.obs;
  final isUpcomingLoading=false.obs;
  final isPopularLoading=false.obs;
  final isDetailLoading = false.obs;


  @override
  void onInit() {

      _fetchNowPlaying();
      _fetchPopularMovie();
      _fetchUpcomingMovie();
      _fetchTopRated();

    super.onInit();
  }

  /// fetch top rated movies
  void _fetchTopRated()async{
    isTopRatedLoading.value=true;
    topRatedMovies.value = await _topRatedRepository.getTopRated()!;
    Future.delayed(const Duration(seconds: 2),()=>isTopRatedLoading.value=false);
  }

  /// fetch nowplaying movies
  void _fetchNowPlaying()async{
    isNowPlayLoading.value=true;
     nowPlayingMovies.value=await _nowPlayingRepository.getNowPlaying()!;
    Future.delayed(const Duration(seconds: 2),()=>isNowPlayLoading.value=false);
  }

  /// fetch upcoming movies
  void _fetchUpcomingMovie()async{
    isUpcomingLoading.value=true;
    upcomingMovies.value = await _upcomingMovieRepository.getUpcomingMovie()!;
    Future.delayed(const Duration(seconds: 1),()=>isUpcomingLoading.value=false);
  }

  ///fetch popular movies
  void _fetchPopularMovie()async{
    isPopularLoading.value=true;
    popularMovies.value = await _popularMovieRepository.getPopularMovie()!;
    Future.delayed(const Duration(seconds: 2),()=>isPopularLoading.value=false);
  }

  /// get detail movie by ID
  void setMovieId(id)=>movieId.value=id;
  void getDetailMovie()async{
    isDetailLoading.value=true;
    detailMovie.value = await _detailMovieRepository.getDetailMovie(movieId.value);
    log('detail title movie : ${detailMovie.value.title}');
    Future.delayed(const Duration(seconds: 1),()=>isDetailLoading.value=false);
    update();
  }
}
