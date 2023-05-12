import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/control_point_form.dart';
import 'package:haccp_mobile/screens/list_cleanings_page.dart';
import 'package:haccp_mobile/screens/list_control_properties_page.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';
import 'package:haccp_mobile/services/menu_api_client/lib/api.dart' as menu_api;
import 'package:haccp_mobile/widgets/number_scroller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

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
            const SizedBox(height: 16),
            Text(AppLocalizations.of(context)!.controlPoints,
                style: Theme.of(context).textTheme.headlineSmall),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _foodStorage.controlPoints.length,
              itemBuilder: (context, index) {
                return Card(
                  color: (_foodStorage
                              .controlPoints[index].properties.isNotEmpty &&
                          _foodStorage
                                  .controlPoints[index].properties.last.value !=
                              null)
                      ? _foodStorage.controlPoints[index].limitType ==
                              LimitType.MAX
                          ? (_foodStorage.controlPoints[index].properties.last
                                      .value! >
                                  _foodStorage.controlPoints[index].threshold!
                              ? Colors.red
                              : Colors.green)
                          : (_foodStorage.controlPoints[index].properties.last
                                      .value! <
                                  _foodStorage.controlPoints[index].threshold!
                              ? Colors.green
                              : Colors.red)
                      : null,
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: ListTile(
                    isThreeLine: true,
                    title: Text(_foodStorage.controlPoints[index].name),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                        ]),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ControlPropertyListPage(
                                    controlPoint:
                                        _foodStorage.controlPoints[index],
                                    storageId: _foodStorage.id!,
                                  ))).then((_) async {
                        await _getControlPoints();
                      });
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ControlPointForm(
                                      foodStorage: _foodStorage,
                                    ))).then((_) async {
                          await _getControlPoints();
                        });
                      },
                      child:
                          Text(AppLocalizations.of(context)!.addControlPoint),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(AppLocalizations.of(context)!.cleanings,
                style: Theme.of(context).textTheme.headlineSmall),
            Card(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: ListTile(
                title: Text(AppLocalizations.of(context)!.last_cleaning),
                isThreeLine: true,
                subtitle: Text(_foodStorage.cleanings.isEmpty
                    ? "No cleanings"
                    : DateFormat.yMMMEd(Intl.getCurrentLocale())
                        .add_jm()
                        .format(_foodStorage.cleanings.last.createdDate!)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CleaningListPage(
                                storageId: _foodStorage.id!,
                              ))).then((_) async {
                    await _getCleanings();
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            Text("Menu items",
                style: Theme.of(context).textTheme.headlineSmall),
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
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: ElevatedButton(
                    onPressed: _saveMenuItems,
                    child: Text(AppLocalizations.of(context)!.save),
                  ),
                ),
              )
            ]),
          ],
        ))));
  }

  _getMenuItems() async {
    final items = await menu_api.MenuItemResourceApi(
            (await MenuApiClient.creteInstance(context)).apiClient)
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

  _getCleanings() async {
    final cleanings = await CleaningApi(
            (await InventoryApiClient.creteInstance(context)).apiClient)
        .listAllCleaning(_foodStorage.id!);
    setState(() {
      _foodStorage.cleanings = cleanings ?? [];
    });
  }

  _getControlPoints() async {
    final controlPoints = await ControlPointApi(
            (await InventoryApiClient.creteInstance(context)).apiClient)
        .listAllControlPoints(_foodStorage.id!);

    if (controlPoints == null || controlPoints.isEmpty) {
      return;
    }

    setState(() {
      _foodStorage.controlPoints = controlPoints;
    });
  }

  _saveMenuItems() async {
    for (final item in _menuItemsPiecesToModify.entries) {
      final inventoryMoveItem = InventoryItemToMoveDto(
          menuItemId: item.key, quantity: item.value.abs());
      if (item.value > 0) {
        FoodStorageApi(
                (await InventoryApiClient.creteInstance(context)).apiClient)
            .addMenuItemToFoodStorage(_foodStorage.id!,
                inventoryItemToMoveDto: inventoryMoveItem);
      } else if (item.value < 0) {
        for (var i = 0; i < item.value.abs(); i++) {
          FoodStorageApi(
                  (await InventoryApiClient.creteInstance(context)).apiClient)
              .removeMenuItemFromFoodStorage(_foodStorage.id!,
                  inventoryItemToMoveDto: inventoryMoveItem);
        }
      }
    }
  }
}
