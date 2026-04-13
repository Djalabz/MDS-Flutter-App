import 'package:flutter/material.dart';

/// Faire un custom input pour le texte, l'idée étant de le réutiliser un maximum
/// et ainsi minimiser la charge du code / plus de cohérence etc

/// Cet input est en fait un TextFormField.

class Input extends StatelessWidget {
  // Chaque input va avoir son controller
  // Chaque input aura son propre label (placceholder)
  // Chaque input aura sa propre gestion des erreurs (message adapté selon l'input)
  // Chaque input pourrait avoir sa propre fonction de validation (facultatif) ou validator

  // Pour les validators : une simple vérification du fait que le champ ne soit pas vide est possible
  // Ceci dit si vous vous sentez le courage vous pouvez faire des fonctions de validation custom (checker le mdp, le mail etc)

  // 1 - Déclaration des variables de type final (label, controller etc)
  final TextEditingController controller;
  final String label;
  // final String error;

  // 2 - Le constructor à adapter
  const Input({
    super.key,
    required this.controller,
    required this.label,
    // required this.error,
  });

  // 3 - Le rendu du custom widget avec le style souhaité
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      validator: (value) {
        if (value!.isEmpty) {
          return "Veuillez remplir le champ";
        } else {
          return null;
        }
      },
    );
  }
}
