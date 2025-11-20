import 'package:flutter/material.dart';

class DemoListPage extends StatelessWidget {
  const DemoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('appbarTitle'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          print("Element en cours de création $index");
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("$index"),
            ),
          );
        },
      ),
    );
  }
}
