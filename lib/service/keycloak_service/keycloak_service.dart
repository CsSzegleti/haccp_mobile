import 'dart:convert';
import 'package:haccp_mobile/service/keycloak_service/keycloak_credential.dart';
import 'package:haccp_mobile/util/env.dart';
import 'package:http/http.dart' as http;

import 'package:haccp_mobile/service/keycloak_service/token.dart';

class KeycloakService {
  static KeycloakService? _instance;
  bool _authenticated = false;
  late KeycloakCredential _credentials;
  late Token _token;

  static KeycloakService get instance {
    _instance ??= KeycloakService();
    return _instance!;
  }

  Future<int> login(String userName, String password) async {
    _credentials = KeycloakCredential(userName, password);
    return await authenticate(_credentials);
  }

  Future<String> getToken() async {
    if (_authenticated && !_token.isExpired) {
      return _token.accessToken;
    } else if (_authenticated && _token.isExpired) {
      if (await refreshToken() == 200) {
        return _token.accessToken;
      } else {
        throw Exception('Failed to refresh token');
      }
    } else {
      throw Exception('Not logged in');
    }
  }

  Future<int> authenticate(KeycloakCredential credential) async {
    final response = await http.post(
      Uri.parse(
          '${Environment.KEYCLOAK_BASE_URL}/auth/realms/${Environment.KEYCLOAK_REALM}/protocol/openid-connect/token'),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: <String, String>{
        'username': credential.username,
        'password': credential.password,
        'grant_type': 'password',
        'client_id': 'backend-service',
      },
    );

    if (response.statusCode == 200) {
      _authenticated = true;
      _token = Token.fromJson(jsonDecode(response.body));
      return response.statusCode;
    } else {
      throw Exception('Failed to authenticate');
    }
  }

  Future<int> refreshToken() async {
    final response = await http.post(
      Uri.parse(
          '${Environment.KEYCLOAK_BASE_URL}/auth/realms/${Environment.KEYCLOAK_REALM}/protocol/openid-connect/token'),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: <String, String>{
        'refresh_token': _token.refreshToken,
        'grant_type': 'refresh_token',
        'client_id': 'backend-service',
      },
    );

    if (response.statusCode == 200) {
      _authenticated = true;
      _token = Token.fromJson(jsonDecode(response.body));
      return response.statusCode;
    } else {
      throw Exception('Failed to refresh token');
    }
  }
}
