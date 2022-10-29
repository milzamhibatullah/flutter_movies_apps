import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:movies_apps/domain/watch_later/repository/watch.later.repository.dart';
import 'package:movies_apps/domain/watch_later/watch.later.model.dart';

class WatchingListController extends GetxController {
  ///repository
  final _watchingListRepository = WatchLaterRepository();
  ///obj
  var watchLater = WatchLaterModel().obs;

  ///loading state
  final isLoading=false.obs;

  @override
  void onInit() {
    _getWatchLater();
    super.onInit();
  }

  ///get local content
  _getWatchLater()async{
    isLoading.value=true;
    watchLater.value = await _watchingListRepository.getWatchLater();
    Future.delayed(const Duration(seconds: 1),()=>isLoading.value=false);
  }

  addToWatchingList(WatchLaterResults result) async{
    isLoading.value=true;
    if(watchLater.value.results!=null && watchLater.value.results!.isNotEmpty){
      if(watchLater.value.results!.where((e) => e.id==result.id).isEmpty){
        watchLater.value.results!.add(result);
      }
    }else{
      watchLater.value.results!.add(result);
    }

    _watchingListRepository.setWatchLater(watchLater.value);
  }
}
