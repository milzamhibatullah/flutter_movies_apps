import 'dart:developer';

import 'package:movies_apps/domain/tvshow/provider/tv.provider.dart';
import 'package:movies_apps/domain/tvshow/todayairing.tv.model.dart';

class TodayAiringTvService {
  final _provider = TvProvider();

  Future<TodayAiringTvModel> fetchData() async {
    try {
      TodayAiringTvModel? obj;
      await _provider.getTodayAiringTv().then((value) {
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
