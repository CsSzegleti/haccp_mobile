import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/list_menu_items.dart';
import 'package:haccp_mobile/screens/list_storages.dart';
import 'package:haccp_mobile/services/keycloak_service/keycloak_service.dart';
import 'package:haccp_mobile/util/env.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/login";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  KeycloakService keycloakService = KeycloakService.instance;
  final _formKey = GlobalKey<FormState>();

  String? _currentRealm;

  String? _userName;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Form(
            key: _formKey,
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.login_realm,
                          border: const OutlineInputBorder(),
                        ),
                        value: _currentRealm,
                        items: Environment.KEYCLOAK_REALMS.map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select realm';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _currentRealm = value;
                          });
                        }),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: _userName,
                      decoration: const InputDecoration(
                        labelText: "username",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter the username";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _userName = newValue!;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: _password,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          try {
                            Environment.KEYCLOAK_REALM = _currentRealm;
                            await keycloakService.login(_userName!, _password!);
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text("Login failed")));
                            return;
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuPage()));
                        }
                      },
                      child: const Text("Login"),
                    ),
                  ],
                ))));
  }
}
