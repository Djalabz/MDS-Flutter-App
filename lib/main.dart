import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/api_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      // On enlève la petite bannière en haut à droite
      debugShowCheckedModeBanner: false,
      routes: {"/api": (context) => ApiPage()},
    );
  }
}
