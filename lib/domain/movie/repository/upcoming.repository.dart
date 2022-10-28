
import 'package:movies_apps/domain/movie/upcoming.model.dart';
import 'package:movies_apps/infrastructure/dal/services/movies/upcoming.movie.service.dart';

class UpcomingMovieRepository{
  final _service = UpcomingMovieService();
  Future<MovieUpcomingModel>? getUpcomingMovie()=>_service.fetchData();
}