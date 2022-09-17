import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = '8b455d081818f2a5acf036124e0b33f9';
    handler.next(options);
  }
}
