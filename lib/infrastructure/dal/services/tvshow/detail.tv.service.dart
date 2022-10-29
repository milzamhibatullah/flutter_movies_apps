import 'dart:developer';

import 'package:movies_apps/domain/tvshow/detail.tv.model.dart';
import 'package:movies_apps/domain/tvshow/provider/tv.provider.dart';

class DetailTvService{
  final _provider = TvProvider();
  Future<DetailTvModel> getDetail(id)async{
    try{
      DetailTvModel? model;
      await _provider.getDetailTv(id).then((results){
        if(results.statusCode==200){
          model=results.body;
        }else{
          model=null;
        }
      });
      return Future.value(model);
    }catch(e){
      log('error detail : $e');
      return throw 'error';
    }
  }
}