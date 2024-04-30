import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  Mybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
     onPressed: onPressed,
     child: Text(text),
     color: Theme.of(context).primaryColor,

    );
  }
}
