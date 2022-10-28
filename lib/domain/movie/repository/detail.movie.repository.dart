
import 'package:movies_apps/domain/movie/detail.movie.model.dart';
import 'package:movies_apps/infrastructure/dal/services/movies/detail.movie.service.dart';

class DetailMovieRepository {
  final _service = DetailMovieService();
  Future<DetailMovieModel> getDetailMovie(id)=>_service.getDetail(id);
}