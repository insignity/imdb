import 'package:hive_flutter/hive_flutter.dart';
import 'package:imdb/models/token.dart';

class StorageService {
  final Box _box;

  StorageService(this._box);

  Token? get sessionToken => _box.get('sessionToken');

  set sessionToken(Token? token) => _box.put('sessionToken', token);
}
