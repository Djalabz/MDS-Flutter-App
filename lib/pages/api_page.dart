import 'package:flutter/material.dart';

class ApiPage extends StatelessWidget {
  const ApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MyApp")),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')),
              );
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(child: Text("Bienvenue sur ma page API")),
    );
  }
}
