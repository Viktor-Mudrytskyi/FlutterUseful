import 'package:dio/dio.dart';

class ApiService {
  ApiService({
    required String baseUrl,
  }) {
    _baseUrl = baseUrl;
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }
  late final String _baseUrl;

  late final Dio _dio;

  Future<dynamic> request({
    required ApiMethods method,
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    late Response<dynamic> response;

    switch (method) {
      case ApiMethods.get:
        response = await _dio.get(
          url,
          queryParameters: data,
          options: Options(headers: headers),
        );
      case ApiMethods.post:
        response = await _dio.post(
          url,
          data: data,
          options: Options(headers: headers),
        );
      case ApiMethods.patch:
        response = await _dio.patch(
          url,
          data: data,
          options: Options(headers: headers),
        );
      case ApiMethods.delete:
        response = await _dio.delete(
          url,
          data: data,
          options: Options(headers: headers),
        );
    }
    return response.data;
  }
}

enum ApiMethods {
  get,
  post,
  patch,
  delete,
}
