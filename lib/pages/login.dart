import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/input-text.dart';
import 'package:flutter_application_1/components/primary-button.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final emailController = TextEditingController();

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

          const PrimaryButton(text: "test", onPressed: null),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/api");
            },
            child: Text("API"),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [Input(controller: emailController, label: "Votre email")],
        ),
      ),
    );
  }
}
