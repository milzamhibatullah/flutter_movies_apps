import 'package:get/get.dart';
import 'package:movies_apps/config.dart';
import 'package:movies_apps/domain/movie/toprated.model.dart';

class TopratedProvider extends GetConnect {
  Future<Response<TopRatedModel>> getTopRated() => get<TopRatedModel>(
        '${ConfigEnvironments.getEnvironments()['url']}movie/top_rated?api_key=963a04d65af57e8e8269bda27d9c5482',
        decoder: (obj) => TopRatedModel.fromJson(obj),
      );
}
