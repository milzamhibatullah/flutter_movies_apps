import 'package:movies_apps/domain/tvshow/toprated.tv.model.dart';
import 'package:movies_apps/infrastructure/dal/services/tvshow/toprated.tv.service.dart';

class TopRatedTvRepository {
  final _service = TopRatedTvService();

  Future<TopRatedTvModel>? getTopRatedTv() => _service.fetchData();
}
