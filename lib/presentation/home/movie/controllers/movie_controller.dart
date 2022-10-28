import 'package:get/get.dart';
import 'package:movies_apps/domain/movie/providers/toprated_provider.dart';
import 'package:movies_apps/domain/movie/repository/toprated.repository.dart';
import 'package:movies_apps/domain/movie/toprated.model.dart';

class MovieController extends GetxController {
  var topRatedMovies = TopRatedModel().obs;
  final _topRatedRepository = TopRatedRepository();
  final count = 0.obs;
  final isLoading=false.obs;


  @override
  void onInit() {
    _fetchTopRated();
    super.onInit();
  }

  void _fetchTopRated()async{
    isLoading.value=true;
    topRatedMovies.value = await _topRatedRepository.getTopRated()!;
    Future.delayed(Duration(seconds: 1),()=>isLoading.value=false);
  }
  void increment() => count.value++;
}
