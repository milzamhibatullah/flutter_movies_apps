import 'dart:developer';

import 'package:movies_apps/domain/tvshow/onair.tv.model.dart';
import 'package:movies_apps/domain/tvshow/provider/tv.provider.dart';

class OnAirTvService {
  final _provider = TvProvider();

  Future<OnAirTvModel> fetchData() async {
    try {
      OnAirTvModel? obj;
      await _provider.getOnAirTv().then((value) {
       // print('popular url : ${value.request!.url}');
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
