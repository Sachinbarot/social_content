import 'package:flutter/material.dart';

class ListviewExampleClass extends StatelessWidget {
  const ListviewExampleClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Example"),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("User ${index + 1}"),
            trailing: const Icon(Icons.person),
          );
        },
      )),
    );
  }
}
