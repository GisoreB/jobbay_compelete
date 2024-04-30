import 'package:dio/dio.dart';
import 'package:jobbay/utils/url.dart';

class HttpServices {
  static final HttpServices _instance = HttpServices.internal();
  factory HttpServices() => _instance;
  HttpServices.internal();

  Dio? _dio;
  Dio getDioInstance() {
    if (_dio == null) {
      return Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 5),
      ));
    } else {
      return _dio!;
    }
  }
}
