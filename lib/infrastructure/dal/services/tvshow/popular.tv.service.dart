import 'dart:developer';

import 'package:movies_apps/domain/tvshow/popular.tv.model.dart';
import 'package:movies_apps/domain/tvshow/provider/tv.provider.dart';

class PopularTvService {
  final _provider = TvProvider();

  Future<PopularTvModel> fetchData() async {
    try {
      PopularTvModel? obj;
      await _provider.getPopularTv().then((value) {
        print('popular url : ${value.request!.url}');
        if (value.statusCode == 200) {
          obj = value.body;
        } else {
          obj = null;
        }
      });
      return Future.value(obj);
    } catch (e) {
      log('error data : $e');
      return throw 'error';
    }
  }
}
