
import 'package:movies_apps/domain/movie/popular.movie.model.dart';
import 'package:movies_apps/infrastructure/dal/services/movies/popular.movie.service.dart';

class PopularMovieRespository{
  final _service = PopularMovieService();
  Future<PopularMovieModel>? getPopularMovie()=>_service.fetchData();
}