
import 'dart:developer';

import 'package:movies_apps/domain/movie/popular.movie.model.dart';
import 'package:movies_apps/domain/movie/providers/movie.provider.dart';

class PopularMovieService {
  final _provider = MovieProvider();

  Future<PopularMovieModel> fetchData()async {
    try{
      PopularMovieModel? obj;
      await _provider.getPopularMovie().then((value){
        //print('popular url : ${value.request!.url}');
        if(value.statusCode==200){
          obj=value.body;
        }else{
          obj=null;
        }
      });
      return Future.value(obj);
    }catch(e){
      log('error data : $e');
      return throw 'error';
    }
  }
}