import 'package:dio/dio.dart';
import 'package:imdb/models/token.dart';

class Api {
  static const String _apiKey = '8b455d081818f2a5acf036124e0b33f9';
  static const String _baseUrl = 'https://api.themoviedb.org/3/';

  final Dio _api = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<void> getToken() async {
    try {
      final result = await _api.get(
        'authentication/token/new?api_key=$_apiKey',
      );
      final token = Token.fromJson(result.data);
      print(token.getToken);
    } catch (e) {}
  }
}
