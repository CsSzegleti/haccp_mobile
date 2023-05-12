class Environment {
  static const String MENU_API_BASE_URL = 'http://devtenant1:8081';
  static const String INVENTORY_API_BASE_URL = 'http://devtenant1:8080';
  static const String KEYCLOAK_BASE_URL = 'http://haccp-iam:6080';
  static const List<String> KEYCLOAK_REALMS = ['devtenant1', 'devtenant2'];
  static String? KEYCLOAK_REALM;

  // String get keycloakRealm {
  //   if (_keycloakRealm == null) {
  //     throw Exception('Realm not set');
  //   }

  //   return _keycloakRealm!;
  // }

  // void set keycloakRealm(String? realm) {
  //   instance;
  //   if (realm != null && keycloakRealms.contains(realm)) {
  //     Environment._instance!.keycloakRealm = realm;
  //   } else {
  //     throw Exception('Invalid realm');
  //   }
  // }
}
