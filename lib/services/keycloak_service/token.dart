class Token {
  String? _accessToken;
  String? _refreshToken;
  int? _expiresIn;
  String? _tokenType;

  String get accessToken => _accessToken!;
  String get refreshToken => _refreshToken!;

  Token.fromJson(Map<String, dynamic> json) {
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
    _expiresIn = json['expires_in'];
    _tokenType = json['token_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this._accessToken;
    data['refresh_token'] = this._refreshToken;
    data['expires_in'] = this._expiresIn;
    data['token_type'] = this._tokenType;
    return data;
  }

  bool get isExpired {
    if (_expiresIn == null) {
      return true;
    }
    final now = DateTime.now().millisecondsSinceEpoch;
    final expiresAt = now + _expiresIn! * 1000;
    return expiresAt < now;
  }
}
