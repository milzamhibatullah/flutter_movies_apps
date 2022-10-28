
import 'package:movies_apps/domain/movie/now.playing.model.dart';
import 'package:movies_apps/infrastructure/dal/services/movies/now.playing.service.dart';

class NowPlayingRepository{
  final _service = NowPlayingService();
  Future<NowPlayingModel>? getNowPlaying()=>_service.fetchData();
}