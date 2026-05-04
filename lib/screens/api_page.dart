import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Notre Scaffold de la page API (conteneur de page qui retourne le userScreen - facultatif)
class ApiPage extends StatelessWidget {
  const ApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: RandomUserScreen());
  }
}

// La classe qui vient créer le state en utilisant randomScreenState
class RandomUserScreen extends StatefulWidget {
  const RandomUserScreen({super.key});

  @override
  RandomUserScreenState createState() => RandomUserScreenState();
}

// La classe contenant la logique du state avec le call API et retournant la liste des users
class RandomUserScreenState extends State<RandomUserScreen> {
  // Initialisation de la liste

  // Fonction pour récupérer les données via l'API

  // Fonction de build qui retourne la vue (scaffold puis ListView etc )
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A compléter
    );
  }
}
