import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/menu_item_form.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/menu_api_client/lib/api.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late List<Category> _categories = [];

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  Future<void> _loadCategories() async {
    final items = await CategoryResourceApi(
            (await MenuApiClient.creteInstance(context)).apiClient)
        .listCategories();
    setState(() {
      _categories = items ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.menu_title),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            // separatorBuilder: (context, index) => const Divider(),
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                      child: Text(
                        _categories[index].name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      )),
                  ListView.builder(
                      itemCount: _categories[index].items.length,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, itemIdx) {
                        return Card(
                            margin: const EdgeInsets.only(
                                left: 16, bottom: 16, right: 16),
                            child: ListTile(
                              title: Text(
                                  _categories[index].items[itemIdx].name,
                                  style: Theme.of(context).textTheme.bodyLarge),
                              subtitle: Text(_categories[index]
                                  .items[itemIdx]
                                  .description),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MenuItemForm(
                                              menuItem: _categories[index]
                                                  .items[itemIdx],
                                              category: _categories[index],
                                            ))).then((_) async {
                                  await _loadCategories();
                                });
                              },
                            ));
                      }),
                ],
              );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addMenuItem");
        },
        tooltip: 'Add new menu item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
