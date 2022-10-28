
import 'package:movies_apps/domain/movie/toprated.model.dart';
import 'package:movies_apps/infrastructure/dal/services/movies/toprated.service.dart';
class TopRatedRepository {
  final _service = TopRatedService();

  Future<TopRatedModel>? getTopRated()=>_service.fetchData();
}