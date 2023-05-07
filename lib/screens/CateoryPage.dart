import 'package:flutter/material.dart';
import 'package:menu_api/api.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  final _baseURL = "http://devtenant1:8081";

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Categories"),
      // ),
      body: FutureBuilder(
        future:
            CategoryResourceApi(ApiClient(basePath: "http://devtenant1:8081"))
                .listCategories(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].name!.isNotEmpty
                      ? snapshot.data![index].name!
                      : "No name"),
                  // subtitle: Text(snapshot.data![index].name.isEmpty ? "No description"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
