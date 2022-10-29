
import 'package:movies_apps/domain/movie/providers/movie.provider.dart';
import 'package:movies_apps/domain/movie/upcoming.model.dart';

class UpcomingMovieService {
  final _provider = MovieProvider();

  Future<MovieUpcomingModel> fetchData()async {
    try{
      MovieUpcomingModel? obj;
      await _provider.getUpcomingMovie().then((value){
      //  print('upcoming url : ${value.request!.url}');

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