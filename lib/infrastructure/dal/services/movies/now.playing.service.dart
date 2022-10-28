
import 'dart:developer';

import 'package:movies_apps/domain/movie/now.playing.model.dart';
import 'package:movies_apps/domain/movie/providers/movie.provider.dart';

class NowPlayingService {
  final _provider = MovieProvider();

  Future<NowPlayingModel> fetchData()async {
    try{
     NowPlayingModel? obj;
      await _provider.getNowPlaying().then((value){
        print('nowplay url : ${value.request!.url}');

        if(value.statusCode==200){
          obj=value.body;
        }else{
          obj=null;
        }
      });
      return Future.value(obj);
    }catch(e){
      log('error : $e');
      return throw 'error';
    }
  }
}