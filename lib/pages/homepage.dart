import 'package:demo/drawer/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HMS"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to Imran in Flutter Organization"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}