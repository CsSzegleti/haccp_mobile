import 'package:flutter/material.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ControlPropertyForm extends StatefulWidget {
  final ControlPoint controlPoint;
  final String storageId;

  const ControlPropertyForm(
      {Key? key, required this.controlPoint, required this.storageId})
      : super(key: key);

  @override
  State<ControlPropertyForm> createState() => _ControlPropertyFormState();
}

class _ControlPropertyFormState extends State<ControlPropertyForm> {
  final _formKey = GlobalKey<FormState>();
  final _controlProperty = ControlProperty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.controlPoint.name),
      ),
      body: Center(
          child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(height: 16),
            TextFormField(
              initialValue: _controlProperty.value?.toString(),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.value,
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppLocalizations.of(context)!.value_required;
                }
                return null;
              },
              onSaved: (newValue) {
                _controlProperty.value = double.parse(newValue!);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: Text(AppLocalizations.of(context)!.save),
            ),
          ]),
        ),
      )),
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _controlProperty.createdDate = DateTime.now();

      await ControlPropertyApi(
              (await InventoryApiClient.creteInstance(context)).apiClient)
          .addNewControlProperty(
        widget.controlPoint.id!,
        widget.storageId,
        controlProperty: _controlProperty,
      );

      Navigator.pop(context);
    }
  }
}
