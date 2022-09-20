import 'package:imdb/models/token.dart';

typedef GetToken = Token? Function();
typedef SetToken = Future<void> Function(Token? token);
