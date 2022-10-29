import 'package:movies_apps/domain/tvshow/onair.tv.model.dart';
import 'package:movies_apps/infrastructure/dal/services/tvshow/onair.tv.service.dart';

class OnAirTvRepository{
  final _service = OnAirTvService();
  Future<OnAirTvModel>? getOnAirTv()=>_service.fetchData();
}