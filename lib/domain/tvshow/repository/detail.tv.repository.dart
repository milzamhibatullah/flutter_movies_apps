import 'package:movies_apps/domain/tvshow/detail.tv.model.dart';
import 'package:movies_apps/infrastructure/dal/services/tvshow/detail.tv.service.dart';

class DetailTvRepository {
  final _service = DetailTvService();
  Future<DetailTvModel> getDetailTv(id)=>_service.getDetail(id);
}