import 'package:dio/dio.dart';
import 'package:imdb/models/token.dart';
import 'package:imdb/utilities/interceptors/interceptor.dart';
import 'package:retrofit/http.dart';

part 'api.g.dart';

class Api extends __Api {
  Api({required String baseUrl}) : super(Dio(), baseUrl: baseUrl) {
    super._dio.interceptors.addAll([AuthInterceptor()]);
  }
}

@RestApi()
abstract class _Api {
  @GET('authentication/token/new')
  Future<Token> getToken();

  @POST('authentication/token/validate_with_login')
  Future<String> createSession({
    @Query('username') required String username,
    @Query('password') required String password,
    @Query('request_token') required String requestToken,
  });
}
