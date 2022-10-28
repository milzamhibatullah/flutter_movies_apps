import 'package:get/get.dart';
import 'package:movies_apps/domain/api_response.dart';
import 'package:movies_apps/domain/core/interfaces/api_connect_interface.dart';

class ApiConnect implements ApiConnectInterface{
  final GetConnect _connect;
  ApiConnect({required GetConnect connect }): _connect =connect;
  @override
  Future<ApiResponse<T>> get<T>(String url, {required T Function(dynamic p1)? json}) async{
    final response = await _connect.get(url,decoder: json);
    final obj = ApiResponse(statusCode: response.statusCode!, payload: response.body);
    return obj;
  }

}