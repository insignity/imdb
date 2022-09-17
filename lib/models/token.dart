class Token {
  final String _token;

  get token => _token;

  Token(this._token);

  factory Token.fromJson(Map<String, dynamic> json) =>
      Token(json['request_token']);
}
