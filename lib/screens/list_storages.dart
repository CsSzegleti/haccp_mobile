import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/storage_details.dart';
import 'package:haccp_mobile/service/api_client.dart';
import 'package:haccp_mobile/service/inventory_api_client/lib/api.dart';
import 'package:haccp_mobile/service/keycloak_service/keycloak_service.dart';

class StorageListPage extends StatefulWidget {
  const StorageListPage({Key? key}) : super(key: key);

  @override
  State<StorageListPage> createState() => _StorageListPageState();
}

class _StorageListPageState extends State<StorageListPage> {
  late List<FoodStorage> _foodStorages = [];

  @override
  void initState() {
    super.initState();
    _getFoodStorages();
  }

  Future<void> _getFoodStorages() async {
    final items = await FoodStorageApi(InventoryApiClient.instance.apiClient)
        .listAllFoodStorages();
    setState(() {
      _foodStorages = items ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Food Storages"),
        ),
        body: ListView.builder(
          itemCount: _foodStorages.length,
          itemBuilder: (context, index) {
            return Card(
                margin: const EdgeInsets.all(16),
                child: ListTile(
                  title: Text(_foodStorages[index].name!),
                  subtitle: Text(_foodStorages[index].description!),
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StorageDetail(
                                    foodStorage: _foodStorages[index])))
                        .then((_) async {
                      await _getFoodStorages();
                    });
                  },
                ));
          },
        ));
  }
}
