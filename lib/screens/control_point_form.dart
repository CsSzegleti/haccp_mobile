import 'package:flutter/material.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';

class ControlPointForm extends StatefulWidget {
  final FoodStorage foodStorage;
  final ControlPoint? controlPoint;

  const ControlPointForm(
      {Key? key, required this.foodStorage, this.controlPoint})
      : super(key: key);

  @override
  State<ControlPointForm> createState() => _ControlPointFormState();
}

class _ControlPointFormState extends State<ControlPointForm> {
  final _formKey = GlobalKey<FormState>();

  late ControlPoint _controlPoint;

  @override
  void initState() {
    super.initState();
    if (widget.controlPoint == null) {
      _controlPoint = ControlPoint(
          name: "",
          description: null,
          properties: [],
          limitType: null,
          threshold: null);
    } else {
      _controlPoint = widget.controlPoint!;
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
              initialValue: _controlPoint.name,
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
                _controlPoint.name = newValue!;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _controlPoint.description,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _controlPoint.description = value!;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<LimitType>(
                decoration: const InputDecoration(
                  labelText: 'Limit type',
                  border: OutlineInputBorder(),
                ),
                value: _controlPoint.limitType,
                items: LimitType.values.map((item) {
                  return DropdownMenuItem<LimitType>(
                    value: item,
                    child: Text(item.value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _controlPoint.limitType = value;
                  });
                }),
            const SizedBox(height: 16),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Threshold',
                border: OutlineInputBorder(),
              ),
              child: Slider(
                value: _controlPoint.threshold ?? 0,
                min: -40,
                max: 40,
                divisions: 20,
                label: _controlPoint.threshold?.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _controlPoint.threshold = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Save'),
            ),
          ]),
        ),
      )),
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_controlPoint.id != null) {
        await ControlPointApi(ApiClient(basePath: "http://devtenant1:8080"))
            .modifyControlPoint(widget.foodStorage.id!, _controlPoint.id!,
                controlPoint: _controlPoint);
      } else {
        await ControlPointApi(ApiClient(basePath: "http://devtenant1:8080"))
            .addControlPoint(widget.foodStorage.id!,
                controlPoint: _controlPoint);
      }

      Navigator.pop(context);
    }
  }
}
