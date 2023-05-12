import 'package:flutter/material.dart';
import 'package:haccp_mobile/services/api_client.dart';
import 'package:haccp_mobile/services/inventory_api_client/lib/api.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CleaningListPage extends StatefulWidget {
  final String storageId;

  const CleaningListPage({Key? key, required this.storageId}) : super(key: key);

  @override
  _CleaningListPageState createState() => _CleaningListPageState();
}

class _CleaningListPageState extends State<CleaningListPage> {
  late List<Cleaning> _cleanings = [];

  @override
  void initState() {
    super.initState();
    _getCleanings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.cleanings),
      ),
      body: RefreshIndicator(
        onRefresh: _getCleanings,
        child: ListView.builder(
          itemCount: _cleanings.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(16),
              child: ListTile(
                title: Text(_cleanings[index].cleanedBy!),
                subtitle: Text(_cleanings[index].createdDate.toString()),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _addCleaning();
          await _getCleanings();
        },
        tooltip: "Add cleaning",
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _getCleanings() async {
    final items = await CleaningApi(
            (await InventoryApiClient.creteInstance(context)).apiClient)
        .listAllCleaning(widget.storageId);
    setState(() {
      _cleanings = items ?? [];
    });
  }

  _addCleaning() async {
    await CleaningApi(
            (await InventoryApiClient.creteInstance(context)).apiClient)
        .addCleaning(widget.storageId);
  }
}
