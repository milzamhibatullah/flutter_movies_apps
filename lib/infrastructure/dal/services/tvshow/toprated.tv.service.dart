import 'dart:developer';

import 'package:movies_apps/domain/tvshow/provider/tv.provider.dart';
import 'package:movies_apps/domain/tvshow/toprated.tv.model.dart';

class TopRatedTvService {
  final _provider = TvProvider();

  Future<TopRatedTvModel> fetchData() async {
    try {
      TopRatedTvModel? obj;
      await _provider.getTopRatedTv().then((value) {
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