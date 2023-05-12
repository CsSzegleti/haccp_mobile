import 'package:flutter/material.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';

class StorageForm extends StatefulWidget {
  static const String routeName = "/storage_form";

  final FoodStorage? foodStorage;

  const StorageForm({Key? key, this.foodStorage}) : super(key: key);

  @override
  State<StorageForm> createState() => _StorageFormState();
}

class _StorageFormState extends State<StorageForm> {
  final _formKey = GlobalKey<FormState>();

  late FoodStorage _foodStorage;

  @override
  void initState() {
    super.initState();
    if (widget.foodStorage == null) {
      _foodStorage = FoodStorage(
        name: "",
        description: "",
        items: [],
      );
    } else {
      _foodStorage = widget.foodStorage!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Storage"),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _foodStorage.name,
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
                _foodStorage.name = newValue!;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _foodStorage.description,
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
                _foodStorage.description = value!;
              },
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
      if (_foodStorage.id != null) {
        await FoodStorageApi(
                (await InventoryApiClient.creteInstance(context)).apiClient)
            .updateFoodStorage(_foodStorage.id!, foodStorage: _foodStorage);
      } else {
        _foodStorage.createdDate = DateTime.now();
        await FoodStorageApi(
                (await InventoryApiClient.creteInstance(context)).apiClient)
            .addNewFoodStorage(foodStorage: _foodStorage);
      }

      Navigator.pop(context);
    }
  }
}
