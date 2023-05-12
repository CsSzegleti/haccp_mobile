import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../services/keycloak_service/keycloak_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  KeycloakService keycloakService = KeycloakService.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homePageTitle),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/login")},
              icon: const Icon(Icons.login))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(AppLocalizations.of(context)!.haccpApp),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: const Icon(Icons.login),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(AppLocalizations.of(context)!.login),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/menuItems");
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: const Icon(Icons.menu_book),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(AppLocalizations.of(context)!.menu_title),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/menuItems");
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: const Icon(Icons.inventory_2),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(AppLocalizations.of(context)!.storages),
                      onTap: () {
                        Navigator.pushNamed(context, "/storages");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
