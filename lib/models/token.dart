class Token {
  final String _token;

  get getToken => _token;

  Token(this._token);

  factory Token.fromJson(Map<String, dynamic> json) =>
      Token(json['request_token']);
}
