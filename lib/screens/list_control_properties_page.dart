import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/control_property_form.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';
import 'package:intl/intl.dart';

class ControlPropertyListPage extends StatefulWidget {
  final ControlPoint controlPoint;
  final String storageId;

  const ControlPropertyListPage(
      {Key? key, required this.controlPoint, required this.storageId})
      : super(key: key);

  @override
  _ControlPropertyListPageState createState() =>
      _ControlPropertyListPageState();
}

class _ControlPropertyListPageState extends State<ControlPropertyListPage> {
  late List<ControlProperty> _controlProperties = [];

  @override
  void initState() {
    super.initState();
    _getControlProperties();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.controlPoint.name),
      ),
      body: RefreshIndicator(
        onRefresh: _getControlProperties,
        child: ListView.builder(
          itemCount: _controlProperties.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: ListTile(
                title: Text(_controlProperties[index].value!.toString()),
                subtitle: Text(
                  DateFormat.yMMMEd(Intl.getCurrentLocale())
                      .add_jm()
                      .format(_controlProperties[index].createdDate!),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ControlPropertyForm(
                      controlPoint: widget.controlPoint,
                      storageId: widget.storageId))).then((_) async {
            await _getControlProperties();
          });
        },
        tooltip: 'Add control property',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _getControlProperties() async {
    final items = await ControlPropertyApi(
            (await InventoryApiClient.creteInstance(context)).apiClient)
        .listAllControlProperty(widget.controlPoint.id!, widget.storageId);
    setState(() {
      _controlProperties = items ?? [];
    });
  }
}
