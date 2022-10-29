import 'package:movies_apps/domain/tvshow/todayairing.tv.model.dart';
import 'package:movies_apps/infrastructure/dal/services/tvshow/todayairing.tv.service.dart';

class TodayAiringTvRepository{
  final _service = TodayAiringTvService();
  Future<TodayAiringTvModel>? getTodayAiringTv()=>_service.fetchData();
}