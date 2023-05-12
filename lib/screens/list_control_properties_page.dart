import 'package:flutter/material.dart';
import 'package:haccp_mobile/screens/control_property_form.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';

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
              margin: const EdgeInsets.all(16),
              child: ListTile(
                title: Text(_controlProperties[index].value!.toString()),
                subtitle:
                    Text(_controlProperties[index].createdDate.toString()),
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
        tooltip: 'Add new menu item',
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
