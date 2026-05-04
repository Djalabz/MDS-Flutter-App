import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// La classe de la page API (conteneur passerelle de page qui retourne le _userscreen)
class ApiPage extends StatelessWidget {
  const ApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: RandomUserScreen());
  }
}

// La classe qui va créer le State
class RandomUserScreen extends StatefulWidget {
  const RandomUserScreen({super.key});

  @override
  RandomUserScreenState createState() => RandomUserScreenState();
}

// La logique du State
class RandomUserScreenState extends State<RandomUserScreen> {
  // On intialise notre tableau de _users
  List<dynamic> _users = [];

  // fonction de fetch des utilisateurs
  Future<void> fetchUsers() async {
    final url = Uri.parse('https://randomuser.me/api/?results=30');

    try {
      final response = await http.get(url);

      // Si succès 200 alors on s'occupe de data
      if (response.statusCode == 200) {
        // On vient decode JSON
        final data = jsonDecode(response.body);

        // Enfin on modifie le state en récupérant les résultats sinon tebleau vide
        setState(() {
          _users = data['results'] ?? [];
        });
      } else {
        print('Erreur ${response.statusCode}');
      }
    } catch (e) {
      print('Erreur: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rest API Call')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: fetchUsers,
            child: const Text('Charger les utilisateurs'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                final user = _users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user["picture"]["large"]),
                  ),
                  title: Text(user["name"]["first"]),
                  subtitle: Text(user["email"]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
