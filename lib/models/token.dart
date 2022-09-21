import 'package:hive/hive.dart';

part 'token.g.dart';

@HiveType(typeId: 0)
class Token extends HiveObject {
  @HiveField(0)
  final String _token;

  @HiveField(1)
  get requestToken => _token;

  Token(this._token);

  factory Token.fromJson(Map<String, dynamic> json) =>
      Token(json['request_token']);

  Map<String, dynamic> toJson() =>
      {'request_token': _token};
}
