import 'package:flutter/material.dart';
import 'package:learn_flutter_30days/models/catalog.dart';
import 'package:learn_flutter_30days/widgets/drawer.dart';
import 'package:learn_flutter_30days/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Flutter";
    final dummyList = List.generate(10, (index) => CatalogModels.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            //itemCount: CatalogModels.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                //item: CatalogModels.items[index],
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
