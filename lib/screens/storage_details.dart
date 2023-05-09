import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:haccp_mobile/service/inventory_api_client/lib/api.dart';
import 'package:haccp_mobile/service/menu_api_client/lib/api.dart' as menu_api;
import 'package:haccp_mobile/widgets/number_scroller.dart';

class StorageDetail extends StatefulWidget {
  final FoodStorage foodStorage;

  const StorageDetail({Key? key, required this.foodStorage}) : super(key: key);

  @override
  _StorageDetailState createState() => _StorageDetailState();
}

class _StorageDetailState extends State<StorageDetail> {
  late FoodStorage _foodStorage;

  late List<menu_api.MenuItem> _menuItems = [];
  late HashMap<int, int> _menuItemsPieces = HashMap();
  late HashMap<int, int> _menuItemsPiecesToModify = HashMap();

  @override
  void initState() {
    super.initState();
    _foodStorage = widget.foodStorage;
    _getMenuItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_foodStorage.name!),
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: (SingleChildScrollView(
            child: Column(
          children: [
            const Text("Control Points"),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _foodStorage.controlPoints.length,
              itemBuilder: (context, index) {
                return Card(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: ListTile(
                        isThreeLine: true,
                        title: Text(_foodStorage.controlPoints[index].name),
                        subtitle: Column(children: [
                          Text(_foodStorage.controlPoints[index].properties
                                      .isEmpty ||
                                  _foodStorage.controlPoints[index].properties
                                          .last.value ==
                                      null
                              ? "No value"
                              : _foodStorage
                                  .controlPoints[index].properties.last.value
                                  .toString()),
                          Text(
                              "${_foodStorage.controlPoints[index].limitType} - ${_foodStorage.controlPoints[index].threshold}")
                        ])));
              },
            ),
            Card(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: ListTile(
                title: const Text("Cleanings"),
                isThreeLine: true,
                subtitle: Text(_foodStorage.cleanings.isEmpty
                    ? "No cleanings"
                    : _foodStorage.cleanings.last.createdDate.toString()),
              ),
            ),
            const Text("Menu Items"),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _menuItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                      margin:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: ListTile(
                          isThreeLine: true,
                          title: Text(_menuItems[index].name),
                          subtitle: NumberScroller(
                              initialValue:
                                  _menuItemsPieces[_menuItems[index].id] ?? 0,
                              minValue: 0,
                              maxValue: 999999999,
                              onChanged: (value) {
                                _menuItemsPiecesToModify[
                                    _menuItems[index]
                                        .id!] = value -
                                    _menuItemsPieces[_menuItems[index].id!]!;
                              },
                              incrementBy: 1)));
                }),
            const SizedBox(height: 16),
            Row(children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: ElevatedButton(
                        onPressed: _saveMenuItems,
                        child: Text('Save'),
                      )))
            ]),
          ],
        ))));
  }

  Future<void> _getMenuItems() async {
    final items = await menu_api.MenuItemResourceApi(
            menu_api.ApiClient(basePath: "http://devtenant1:8081"))
        .listMenuItems();

    if (items == null || items.isEmpty) {
      return;
    }

    final itemsPieces = HashMap.fromIterable(items,
        key: (item) => item.id as int, value: (item) => 0);
    final itemsPiecesToModify = HashMap.fromIterable(items,
        key: (item) => item.id as int, value: (item) => 0);

    for (final item in _foodStorage.items) {
      if (itemsPieces.containsKey(item.menuItemId)) {
        itemsPieces[item.menuItemId!] = itemsPieces[item.menuItemId!]! + 1;
      } else {
        itemsPieces[item.menuItemId!] = 1;
      }
    }

    setState(() {
      _menuItems = items;
      _menuItemsPieces = itemsPieces;
      _menuItemsPiecesToModify = itemsPiecesToModify;
    });
  }

  _saveMenuItems() {
    for (final item in _menuItemsPiecesToModify.entries) {
      final inventoryMoveItem = InventoryItemToMoveDto(
          menuItemId: item.key, quantity: item.value.abs());
      if (item.value > 0) {
        FoodStorageApi(ApiClient(basePath: "http://devtenant1:8080"))
            .addMenuItemToFoodStorage(_foodStorage.id!,
                inventoryItemToMoveDto: inventoryMoveItem);
      } else if (item.value < 0) {
        for (var i = 0; i < item.value.abs(); i++) {
          FoodStorageApi(ApiClient(basePath: "http://devtenant1:8080"))
              .removeMenuItemFromFoodStorage(_foodStorage.id!,
                  inventoryItemToMoveDto: inventoryMoveItem);
        }
      }
    }
  }
}
