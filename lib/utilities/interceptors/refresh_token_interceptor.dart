import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:imdb/constants.dart';
import 'package:imdb/models/token.dart';
import 'package:imdb/services/session/session_service.dart';
import 'package:imdb/utilities/types.dart';

class RefreshTokenInterceptor extends Interceptor {
  final GetToken getToken;
  final SetToken setToken;

  RefreshTokenInterceptor({required this.getToken, required this.setToken});

  final _dio = Dio();

  Token? get _token => getToken();

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 || err.response?.statusCode == 400) {
      try {
        final req = err.requestOptions;

        final response = await _dio.get<Map<String, dynamic>>(
          '${req.baseUrl}authentication/token/new',
          queryParameters: {
            'api_key': Constants.apiKey,
          },
        );
        final requestToken = Token(response.data!['request_token']);
        GetIt.I<SessionService>().update(requestToken);

        final retry = await _dio.request(
          req.baseUrl + req.path,
          options: Options(
            method: req.method,
            headers: req.headers,
            contentType: req.contentType,
            extra: req.extra,
            receiveTimeout: req.receiveTimeout,
            sendTimeout: req.sendTimeout,
            responseType: req.responseType,
          ),
          data: req.data,
          queryParameters: req.queryParameters
            ..addAll({'request_token': requestToken.requestToken}),
          cancelToken: req.cancelToken,
          onReceiveProgress: req.onReceiveProgress,
          onSendProgress: req.onSendProgress,
        );
        handler.resolve(retry);
      } catch (e) {
        log('caught error$e');
      }
    }
  }
}
