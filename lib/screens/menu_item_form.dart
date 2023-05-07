import 'package:flutter/material.dart';
import 'package:haccp_mobile/service/menu_api_client/lib/api.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'package:multiselect/multiselect.dart';

import '../widgets/number_scroller.dart';

class MenuItemForm extends StatefulWidget {
  final MenuItem? menuItem;

  const MenuItemForm({Key? key, this.menuItem}) : super(key: key);

  @override
  State<MenuItemForm> createState() => _MenuItemFormState();
}

class _MenuItemFormState extends State<MenuItemForm> {
  final _formKey = GlobalKey<FormState>();

  late MenuItem _menuItem;

  Category? _selectedCategory;
  List<Allergen> _selectedAllergens = [];
  List<Category> _categories = [];
  List<Allergen> _allergens = [];
  List<String> _currencies = ["EUR", "USD", "GBP", "HUF"];

  @override
  void initState() {
    super.initState();
    _loadCategories();
    _loadAllergens();

    if (widget.menuItem != null) {
      _menuItem = widget.menuItem!;
      _selectedCategory = _menuItem.category;
      _selectedAllergens = _menuItem.allergens;
    } else {
      _menuItem = MenuItem(
        name: "",
        description: "",
        price: 0,
        currency: "HUF",
        category: null,
        allergens: [],
        storingCondition:
            StoringCondition(temperature: 0, humidity: 0, maxStoringHours: 0),
      );
    }
  }

  Future<void> _loadAllergens() async {
    final items =
        await AllergenResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
            .listAllergens();
    setState(() {
      _allergens = items == null ? [] : items;
    });
  }

  Future<void> _loadCategories() async {
    final items =
        await CategoryResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
            .listCategories();
    setState(() {
      _categories = items == null ? [] : items;
      print(_categories);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Item"),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Text("Base data"),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _menuItem.name,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a name";
                }
                return null;
              },
              onSaved: (newValue) {
                _menuItem.name = newValue!;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _menuItem.description,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              onSaved: (value) {
                _menuItem.description = value!;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<Category>(
                decoration: const InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
                value: _selectedCategory,
                items: _categories.map((item) {
                  return DropdownMenuItem<Category>(
                    value: item,
                    child: Text(item.name!),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value;
                    _menuItem.category = value;
                  });
                }),
            const SizedBox(height: 16),
            DropDownMultiSelect<Allergen>(
              decoration: const InputDecoration(
                labelText: 'Allergens',
                border: OutlineInputBorder(),
              ),
              options: _allergens,
              menuItembuilder: (option) => Text(option.longName!),
              selectedValues: _selectedAllergens,
              onChanged: (List<Allergen> allergens) {
                setState(() {
                  _selectedAllergens = allergens;
                  _menuItem.allergens = allergens;
                });
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _menuItem.price.toString(),
              decoration: const InputDecoration(
                labelText: "Price",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a price";
                }
                return null;
              },
              onSaved: (value) {
                _menuItem.price = double.parse(value!);
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Currency',
                  border: OutlineInputBorder(),
                ),
                value: _menuItem.currency,
                items: _currencies.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _menuItem.currency = value!;
                  });
                }),
            const SizedBox(height: 16),
            const Text("Storing condition"),
            const SizedBox(height: 16),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Temperature',
                border: OutlineInputBorder(),
              ),
              child: Slider(
                value: _menuItem.storingCondition.temperature,
                min: -40,
                max: 40,
                divisions: 80,
                label:
                    _menuItem.storingCondition.temperature.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _menuItem.storingCondition.temperature = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Humidity',
                border: OutlineInputBorder(),
              ),
              child: Slider(
                value: _menuItem.storingCondition.humidity ?? 0,
                min: 0,
                max: 100,
                divisions: 20,
                label: _menuItem.storingCondition.humidity?.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _menuItem.storingCondition.humidity = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Max storing hours',
                border: OutlineInputBorder(),
              ),
              child: Slider(
                value: _menuItem.storingCondition.maxStoringHours.toDouble(),
                min: 0,
                max: 100,
                divisions: 20,
                label: _menuItem.storingCondition.maxStoringHours
                    .round()
                    .toString(),
                onChanged: (value) {
                  setState(() {
                    _menuItem.storingCondition.maxStoringHours = value.round();
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Save'),
            ),
          ]),
        ),
      )),
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(_menuItem);
      await MenuItemResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
          .addMenuItem(menuItem: _menuItem);
      Navigator.pop(context);
    }
  }
}
