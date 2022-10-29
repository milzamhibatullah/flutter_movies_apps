
import 'package:get/get.dart';
import 'package:movies_apps/domain/tvshow/detail.tv.model.dart';
import 'package:movies_apps/domain/tvshow/onair.tv.model.dart';
import 'package:movies_apps/domain/tvshow/popular.tv.model.dart';
import 'package:movies_apps/domain/tvshow/repository/onair.tv.repository.dart';
import 'package:movies_apps/domain/tvshow/repository/popular.tv.repository.dart';
import 'package:movies_apps/domain/tvshow/repository/todayairing.tv.repository.dart';
import 'package:movies_apps/domain/tvshow/repository/toprated.tv.repository.dart';
import 'package:movies_apps/domain/tvshow/todayairing.tv.model.dart';
import 'package:movies_apps/domain/tvshow/toprated.tv.model.dart';

class TvShowController extends GetxController{
  ///tv object
  var topRatedTv = TopRatedTvModel().obs;
  var popularTv = PopularTvModel().obs;
  var onAirTv = OnAirTvModel().obs;
  var todayAiringTv = TodayAiringTvModel().obs;
  var detailTv = DetailTvModel().obs;

  ///all repository
  final _topRatedTvRepository = TopRatedTvRepository();
  final _popularTvRepository = PopularTvRepository();
  final _onAirTvRepository = OnAirTvRepository();
  final _todayAiringTvRepository = TodayAiringTvRepository();
 // final _detailMovieRepository=DetailMovieRepository();

  ///all state loading
  final isTopRatedLoading=false.obs;
  final isOnAirLoading=false.obs;
  final isTodayAiringLoading=false.obs;
  final isPopularLoading=false.obs;
  final isDetailLoading = false.obs;

  @override
  void onInit() {
    _fetchPopularTv();
    _fetchOnAirTv();
    _fetchTodayAiring();
    _fetchTopRatedTv();
    super.onInit();
  }

  /// fetch top rated tv
  void _fetchTopRatedTv()async{
    isTopRatedLoading.value=true;
    topRatedTv.value = await _topRatedTvRepository.getTopRatedTv()!;
    Future.delayed(const Duration(seconds: 2),()=>isTopRatedLoading.value=false);
  }

  /// fetch Popular Tv
  void _fetchPopularTv()async{
    isPopularLoading.value=true;
    popularTv.value=await _popularTvRepository.getPopularTv()!;
    Future.delayed(const Duration(seconds: 2),()=>isPopularLoading.value=false);
  }

  /// fetch on air
  void _fetchOnAirTv()async{
    isOnAirLoading.value=true;
    onAirTv.value = await _onAirTvRepository.getOnAirTv()!;
    Future.delayed(const Duration(seconds: 1),()=>isOnAirLoading.value=false);
  }

  ///fetch today airing
  void _fetchTodayAiring()async{
    isTodayAiringLoading.value=true;
    todayAiringTv.value = await _todayAiringTvRepository.getTodayAiringTv()!;
    Future.delayed(const Duration(seconds: 2),()=>isTodayAiringLoading.value=false);
  }
}