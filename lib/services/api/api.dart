import 'package:dio/dio.dart';
import 'package:imdb/models/token.dart';
import 'package:imdb/utilities/interceptors/auth_interceptor.dart';
import 'package:imdb/utilities/interceptors/refresh_token_interceptor.dart';
import 'package:imdb/utilities/types.dart';
import 'package:retrofit/http.dart';

part 'api.g.dart';

class Api extends __Api {
  Api({
    required String baseUrl,
    required GetToken getToken,
    required SetToken setToken,
  }) : super(Dio(), baseUrl: baseUrl) {
    super._dio.interceptors.addAll([
      AuthInterceptor(getToken: getToken),
      RefreshTokenInterceptor(getToken: getToken, setToken: setToken),
    ]);
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
  });
}
