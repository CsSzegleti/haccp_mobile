import 'package:haccp_mobile/service/inventory_api_client/lib/api.dart';
import 'package:haccp_mobile/service/keycloak_service/keycloak_service.dart';
import 'package:haccp_mobile/service/menu_api_client/lib/api.dart' as menu_api;
import 'package:haccp_mobile/util/env.dart';

class MenuApiClient {
  static MenuApiClient? _instance;

  final menu_api.ApiClient _apiClient;

  MenuApiClient(this._apiClient);

  static MenuApiClient get instance {
    if (_instance == null) {
      var auth = menu_api.HttpBearerAuth();
      auth.accessToken = KeycloakService.instance.getToken().accessToken;

      return MenuApiClient(menu_api.ApiClient(
          basePath: Environment.MENU_API_BASE_URL, authentication: auth));
    }

    return _instance!;
  }

  menu_api.ApiClient get apiClient => _apiClient;
}

class InventoryApiClient {
  static InventoryApiClient? _instance;

  final ApiClient _apiClient;

  InventoryApiClient(this._apiClient);

  static InventoryApiClient get instance {
    if (_instance == null) {
      var auth = HttpBearerAuth();
      auth.accessToken = KeycloakService.instance.getToken().accessToken;

      return InventoryApiClient((ApiClient(
          basePath: Environment.INVENTORY_API_BASE_URL, authentication: auth)));
    }

    return _instance!;
  }

  ApiClient get apiClient => _apiClient;
}
