import 'package:get/get.dart';
import 'package:movies_apps/config.dart';
import 'package:movies_apps/domain/tvshow/onair.tv.model.dart';
import 'package:movies_apps/domain/tvshow/popular.tv.model.dart';
import 'package:movies_apps/domain/tvshow/todayairing.tv.model.dart';
import 'package:movies_apps/domain/tvshow/toprated.tv.model.dart';

class TvProvider extends GetConnect {
  static const apiKey = '963a04d65af57e8e8269bda27d9c5482';

  ///get popular tv
  Future<Response<PopularTvModel>> getPopularTv() => get<PopularTvModel>(
        '${ConfigEnvironments.getEnvironments()['url']}tv/popular?api_key=$apiKey',
        decoder: (obj) => PopularTvModel.fromJson(obj),
      );

  ///get top rated tv
  Future<Response<TopRatedTvModel>> getTopRatedTv() => get<TopRatedTvModel>(
        '${ConfigEnvironments.getEnvironments()['url']}tv/top_rated?api_key=$apiKey',
        decoder: (obj) => TopRatedTvModel.fromJson(obj),
      );

  /// get onair tv
  Future<Response<OnAirTvModel>> getOnAirTv() => get<OnAirTvModel>(
        '${ConfigEnvironments.getEnvironments()['url']}tv/on_the_air?api_key=$apiKey',
        decoder: (obj) => OnAirTvModel.fromJson(obj),
      );

  ///today airing tv
  Future<Response<TodayAiringTvModel>> getTodayAiringTv() =>
      get<TodayAiringTvModel>(
        '${ConfigEnvironments.getEnvironments()['url']}tv/airing_today?api_key=$apiKey',
        decoder: (obj) => TodayAiringTvModel.fromJson(obj),
      );
}
