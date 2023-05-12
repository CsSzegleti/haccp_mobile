import 'package:flutter/material.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/menu_api_client/lib/api.dart';
import 'package:multiselect/multiselect.dart';

class MenuItemForm extends StatefulWidget {
  final MenuItem? menuItem;
  final Category? category;

  const MenuItemForm({Key? key, this.menuItem, this.category})
      : super(key: key);

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
  final List<String> _currencies = ["EUR", "USD", "GBP", "HUF"];

  @override
  void initState() {
    super.initState();
    _loadCategories();
    _loadAllergens();

    if (widget.menuItem != null) {
      _menuItem = widget.menuItem!;
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
    final items = await AllergenResourceApi(
            (await MenuApiClient.creteInstance(context)).apiClient)
        .listAllergens();
    setState(() {
      _allergens = items ?? [];
    });
  }

  Future<void> _loadCategories() async {
    final items = await CategoryResourceApi(
            (await MenuApiClient.creteInstance(context)).apiClient)
        .listCategories();
    setState(() {
      _categories = items ?? [];
      _selectedCategory = _categories.firstWhere(
          (element) => element.id == widget.category!.id,
          orElse: () => _categories.first);
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
              maxLines: null,
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
              maxLines: null,
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
                    child: Text(item.name),
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
              isDense: false,
              menuItembuilder: (option) => Text(option.longName),
              childBuilder: (selectedValues) {
                return Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Wrap(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      spacing: 8,
                      children: selectedValues
                          .map((selectedValue) => Chip(
                                label: Text(selectedValue.shortName),
                              ))
                          .toList(growable: true),
                    ));
              },
              selectedValues: _selectedAllergens.toList(growable: true),
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
      try {
        if (_menuItem.id != null) {
          await MenuItemResourceApi(
                  (await MenuApiClient.creteInstance(context)).apiClient)
              .updateMenuItem(_menuItem.id!, menuItem: _menuItem);
        } else {
          await MenuItemResourceApi(
                  (await MenuApiClient.creteInstance(context)).apiClient)
              .addMenuItem(menuItem: _menuItem);
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.red,
            content: Text("There has been an error")));
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green, content: Text("Success")));

      Navigator.pop(context);
    }
  }
}
