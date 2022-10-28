
import 'package:movies_apps/domain/movie/providers/toprated_provider.dart';
import 'package:movies_apps/domain/movie/toprated.model.dart';

class TopRatedService {
  final _provider = TopratedProvider();

  Future<TopRatedModel> fetchData()async {
   try{
     TopRatedModel? obj;
     await _provider.getTopRated().then((value){
       if(value.statusCode==200){
        obj=value.body;
       }else{
        obj=null;
       }
     });
     return Future.value(obj);
   }catch(e){
     return throw 'error';
   }
  }
}