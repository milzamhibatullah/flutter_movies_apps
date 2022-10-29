import 'package:movies_apps/domain/tvshow/popular.tv.model.dart';
import 'package:movies_apps/infrastructure/dal/services/tvshow/popular.tv.service.dart';

class PopularTvRepository{
  final _service = PopularTvService();
  Future<PopularTvModel>? getNowPopularTv()=>_service.fetchData();
}