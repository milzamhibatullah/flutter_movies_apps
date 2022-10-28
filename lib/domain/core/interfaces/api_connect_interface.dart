import '../../api_response.dart';

abstract class ApiConnectInterface {
  Future<ApiResponse<T>> get<T>(
    String url, {
    required T Function(dynamic)? json,
  });
}
