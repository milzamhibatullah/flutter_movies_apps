
import 'dart:convert';
import 'dart:developer';

import 'package:movies_apps/domain/watch_later/provider/watch.later.provider.dart';
import 'package:movies_apps/domain/watch_later/watch.later.model.dart';

class WatchLaterService{
  final _provider = WatchLaterPovider();

  /// set watch later content
  void setWatchLater(WatchLaterModel watchLaterModel){
    try{
      var jsonData = jsonEncode({
        'results':watchLaterModel.toJson()
      });

       _provider.setWatchLater(jsonData);
  }catch(e){
      log('error watch later service :  $e');
      throw'error';
  }
}
  ///get local content
  Future<WatchLaterModel> getWatchLater()async{
    try{
      WatchLaterModel? model;
      await _provider.getWatchLater().then((value){
        if(value!=null){
          model = WatchLaterModel.fromJson(value);
        }else{
          model=WatchLaterModel();
        }
      });

      return Future.value(model);
    }catch(e){
      return throw 'error service $e';
    }
  }
}