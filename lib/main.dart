import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/api_page.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {"/api": (context) => ApiPage()},
    );
  }
}
