import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:learn_flutter_30days/models/catalog.dart';
import 'package:learn_flutter_30days/widgets/drawer.dart';
import 'package:learn_flutter_30days/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);

    var productData = decodeJson["products"];
    CatalogModels.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Flutter";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              (CatalogModels.items != null && CatalogModels.items!.isNotEmpty)
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        final item = CatalogModels.items![index];

                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: GridTile(
                            header: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple[300],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                item.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            child: Image.network(item.image),
                            footer: Text(
                              "\$${item.price}",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ),
                        );
                      },
                      itemCount: CatalogModels.items!.length,
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    )),
      drawer: MyDrawer(),
    );
  }
}
