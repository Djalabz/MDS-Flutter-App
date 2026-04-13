import 'package:flutter/material.dart';

// Todo :
// Une première page un peu personnalisée en Flutter
// Dans votre scaffold vous aurez :
//  - Une appbar personnalisée -> Changer la couleur de fond, une autre police, et au moins 2 icones de votre choix
//  - Pour le body -> Un Container avec dedans un bouton (qui servira d'entrer dans l'application)
//  et un message associé de type Bienvenu sur monApp

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/api");
            },
            child: Text("API"),
          ),
        ],
      ),
      body: Container(
        color: Colors.amber[50],
        child: Row(
          children: [ElevatedButton(onPressed: () {}, child: Text("ok"))],
        ),
      ),
    );
  }
}
