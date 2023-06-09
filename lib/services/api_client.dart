import 'package:flutter/material.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';
import 'package:haccp_mobile/services/keycloak_service/keycloak_service.dart';
import 'package:haccp_mobile/services/menu_api_client/lib/api.dart' as menu_api;
import 'package:haccp_mobile/util/env.dart';

class MenuApiClient {
  static MenuApiClient? _instance;

  final menu_api.ApiClient _apiClient;

  MenuApiClient(this._apiClient);

  static Future<MenuApiClient> creteInstance(BuildContext context) async {
    if (_instance == null) {
      var auth = menu_api.HttpBearerAuth();
      try {
        auth.accessToken = await KeycloakService.instance.getToken();
      } catch (e) {
        Navigator.pushNamed(context, "/login");
      }

      return MenuApiClient(menu_api.ApiClient(
          basePath: Environment.MENU_API_BASE_URL, authentication: auth));
    }

    (_instance?._apiClient.authentication as HttpBearerAuth).accessToken =
        await KeycloakService.instance.getToken();

    return _instance!;
  }

  // static Future<MenuApiClient> get instance async {
  //   if (_instance == null) {
  //     var auth = menu_api.HttpBearerAuth();
  //     auth.accessToken = await KeycloakService.instance.getToken();

  //     return MenuApiClient(menu_api.ApiClient(
  //         basePath: Environment.MENU_API_BASE_URL, authentication: auth));
  //   }

  //   (_instance?._apiClient.authentication as HttpBearerAuth).accessToken =
  //       await KeycloakService.instance.getToken();

  //   return _instance!;
  // }

  menu_api.ApiClient get apiClient => _apiClient;
}

class InventoryApiClient {
  static InventoryApiClient? _instance;

  final ApiClient _apiClient;

  InventoryApiClient(this._apiClient);

  static Future<InventoryApiClient> creteInstance(BuildContext context) async {
    if (_instance == null) {
      var auth = HttpBearerAuth();
      try {
        auth.accessToken = await KeycloakService.instance.getToken();
      } catch (e) {
        Navigator.pushNamed(context, "/login");
      }

      return InventoryApiClient((ApiClient(
          basePath: Environment.INVENTORY_API_BASE_URL, authentication: auth)));
    }

    (_instance?._apiClient.authentication as HttpBearerAuth).accessToken =
        await KeycloakService.instance.getToken();

    return _instance!;
  }

  // static Future<InventoryApiClient> get instance async {
  //   if (_instance == null) {
  //     var auth = HttpBearerAuth();
  //     auth.accessToken = await KeycloakService.instance.getToken();

  //     return InventoryApiClient((ApiClient(
  //         basePath: Environment.INVENTORY_API_BASE_URL, authentication: auth)));
  //   }

  //   (_instance?._apiClient.authentication as HttpBearerAuth).accessToken =
  //       await KeycloakService.instance.getToken();

  //   return _instance!;
  // }

  ApiClient get apiClient => _apiClient;
}
