import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/storage_details.dart';
import 'package:haccp_mobile/screens/storage_form.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';

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
    final items = await FoodStorageApi(
            (await InventoryApiClient.creteInstance(context)).apiClient)
        .listAllFoodStorages();
    setState(() {
      _foodStorages = items ?? [];
    });
  }

  bool _calculateTresholdViolation(FoodStorage foodStorage) {
    for (final controlPoint in foodStorage.controlPoints) {
      if (controlPoint.properties.isNotEmpty &&
          controlPoint.properties.last.value != null) {
        if (controlPoint.limitType == LimitType.MAX) {
          if (controlPoint.properties.last.value! > controlPoint.threshold!) {
            return true;
          }
        } else {
          if (controlPoint.properties.last.value! < controlPoint.threshold!) {
            return true;
          }
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Storages"),
      ),
      body: RefreshIndicator(
        onRefresh: _getFoodStorages,
        child: ListView.builder(
          itemCount: _foodStorages.length,
          itemBuilder: (context, index) {
            return Card(
              color: _calculateTresholdViolation(_foodStorages[index])
                  ? Colors.red
                  : null,
              margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
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
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, StorageForm.routeName).then((_) async {
            await _getFoodStorages();
          });
        },
        tooltip: 'Add new menu item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
