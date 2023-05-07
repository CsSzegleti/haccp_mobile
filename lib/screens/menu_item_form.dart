import 'package:flutter/material.dart';
import 'package:haccp_mobile/service/menu_api_client/lib/api.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'package:multiselect/multiselect.dart';

import '../widgets/number_scroller.dart';

class MenuItemForm extends StatefulWidget {
  final MenuItemDto? menuItem;

  const MenuItemForm({Key? key, this.menuItem}) : super(key: key);

  @override
  State<MenuItemForm> createState() => _MenuItemFormState();
}

class _MenuItemFormState extends State<MenuItemForm> {
  final _formKey = GlobalKey<FormState>();

  final MenuItemDto _menuItemDto = MenuItemDto();

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
    if (_menuItemDto != null && _menuItemDto.storingCondition == null) {
      _menuItemDto.storingCondition = StoringCondition();
    }
  }

  Future<void> _loadAllergens() async {
    final items =
        await AllergenResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
            .apiV1MenuAllergenGet();
    setState(() {
      _allergens = items == null ? [] : items;
    });
  }

  Future<void> _loadCategories() async {
    final items =
        await CategoryResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
            .apiV1MenuCategoryGet();
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
            Text("Base data"),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _menuItemDto.name,
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
                _menuItemDto.name = newValue;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _menuItemDto.description,
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
                _menuItemDto.description = value;
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
                    _menuItemDto.categoryId = value!.id;
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
                  _menuItemDto.allergenIds =
                      allergens.map((e) => e.id).toList().cast<int>();
                });
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _menuItemDto.price == null
                  ? ""
                  : _menuItemDto.price.toString(),
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
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Currency',
                  border: OutlineInputBorder(),
                ),
                value: _menuItemDto.currency,
                items: _currencies.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _menuItemDto.currency = value;
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
                value: _menuItemDto.storingCondition?.temperature ?? 0,
                min: -40,
                max: 40,
                divisions: 80,
                label: _menuItemDto.storingCondition!.temperature
                    ?.round()
                    .toString(),
                onChanged: (value) {
                  setState(() {
                    _menuItemDto.storingCondition!.temperature = value;
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
                value: _menuItemDto.storingCondition?.humidity ?? 0,
                min: 0,
                max: 100,
                divisions: 20,
                label:
                    _menuItemDto.storingCondition!.humidity?.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _menuItemDto.storingCondition!.humidity = value;
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
                value: _menuItemDto.storingCondition?.maxStoringHours
                        ?.toDouble() ??
                    0,
                min: 0,
                max: 100,
                divisions: 20,
                label: _menuItemDto.storingCondition!.maxStoringHours
                    ?.round()
                    .toString(),
                onChanged: (value) {
                  setState(() {
                    _menuItemDto.storingCondition!.maxStoringHours =
                        value.round();
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

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(_menuItemDto);
      MenuItemResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
          .apiV1MenuItemPost(menuItemDto: _menuItemDto);
    }
  }
}
