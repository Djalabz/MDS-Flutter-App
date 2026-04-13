import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // Retourner un Elevated Button et le customiser -> décider de son style
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[900],
        padding: EdgeInsets.all(20),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
