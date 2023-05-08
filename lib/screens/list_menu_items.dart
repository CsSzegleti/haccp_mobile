import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haccp_mobile/service/menu_api_client/lib/api.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  final _baseURL = "http://devtenant1:8081";

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
    final items =
        await CategoryResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
            .listCategories();
    setState(() {
      _categories = items ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const Divider(),
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
                        return Container(
                            margin: const EdgeInsets.only(left: 32, bottom: 16),
                            child: ListTile(
                              title: Text(
                                  _categories[index].items[itemIdx].name,
                                  style: Theme.of(context).textTheme.bodyLarge),
                              subtitle: Text(_categories[index]
                                  .items[itemIdx]
                                  .description),
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
