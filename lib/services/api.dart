import 'package:dio/dio.dart';
import 'package:imdb/models/token.dart';
import 'package:imdb/utilities/interceptors/interceptor.dart';
import 'package:retrofit/http.dart';

part 'api.g.dart';

const String _baseUrl = 'https://api.themoviedb.org/3/';
const String _apiKey = '8b455d081818f2a5acf036124e0b33f9';

class Api extends __Api {
  Api() : super(Dio(), baseUrl: _baseUrl) {
    super._dio.interceptors.addAll([AuthInterceptor()]);
  }
}

@RestApi(baseUrl: _baseUrl)
abstract class _Api {
  @GET('authentication/token/new')
  Future<Token> getToken();
}
