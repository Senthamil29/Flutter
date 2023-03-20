import 'package:flutter/material.dart';
import 'package:learn_flutter_30days/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Flutter";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          child: Center(child: Text("Welcome to $days days of $name"))),
      drawer: MyDrawer(),
    );
  }
}
