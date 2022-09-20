import 'package:dio/dio.dart';
import 'package:imdb/constants.dart';
import 'package:imdb/models/token.dart';
import 'package:imdb/utilities/types.dart';

class AuthInterceptor extends Interceptor {
  final GetToken getToken;

  AuthInterceptor({required this.getToken});

  Token? get _token => getToken();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = Constants.apiKey;
    if (_token != null) {
      options.queryParameters['request_token'] = _token!.requestToken;
    }

    handler.next(options);
  }
}
