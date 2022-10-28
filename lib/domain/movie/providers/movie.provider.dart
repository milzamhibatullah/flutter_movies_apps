import 'package:get/get.dart';
import 'package:movies_apps/config.dart';
import 'package:movies_apps/domain/movie/detail.movie.model.dart';
import 'package:movies_apps/domain/movie/now.playing.model.dart';
import 'package:movies_apps/domain/movie/popular.movie.model.dart';
import 'package:movies_apps/domain/movie/toprated.model.dart';
import 'package:movies_apps/domain/movie/upcoming.model.dart';

class MovieProvider extends GetConnect {
  static const apiKey = '963a04d65af57e8e8269bda27d9c5482';

  ///fetch top rated movie
  Future<Response<TopRatedModel>> getTopRated() =>
      get<TopRatedModel>(
        '${ConfigEnvironments
            .getEnvironments()['url']}movie/top_rated?api_key=$apiKey',
        decoder: (obj) => TopRatedModel.fromJson(obj),
      );

  ///fetch upcoming movie
  Future<Response<MovieUpcomingModel>> getUpcomingMovie() =>
      get<MovieUpcomingModel>(
        '${ConfigEnvironments
            .getEnvironments()['url']}movie/upcoming?api_key=$apiKey',
        decoder: (obj) => MovieUpcomingModel.fromJson(obj),
      );

  ///fetch now playing movie
  Future<Response<NowPlayingModel>> getNowPlaying() =>
      get<NowPlayingModel>(
        '${ConfigEnvironments
            .getEnvironments()['url']}movie/now_playing?api_key=$apiKey',
        decoder: (obj) => NowPlayingModel.fromJson(obj),
      );

  ///fetch popular movie
  Future<Response<PopularMovieModel>> getPopularMovie() =>
      get<PopularMovieModel>(
        '${ConfigEnvironments
            .getEnvironments()['url']}movie/popular?api_key=$apiKey',
        decoder: (obj) => PopularMovieModel.fromJson(obj),
      );

  ///get detail movie by id
  Future<Response<DetailMovieModel>> getDetailMovie(id) =>
      get<DetailMovieModel>(
        '${ConfigEnvironments
            .getEnvironments()['url']}movie/$id?api_key=$apiKey',
        decoder: (obj) => DetailMovieModel.fromJson(obj),
      );
}
