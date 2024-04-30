// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todolistapp/todopages/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({super.key, 
  required this.controller,
  required this.onSave,
  required this.onCancel,
  
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                  hintText: "Add new Task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            //save button
           Mybutton(text: "Save", onPressed: onSave,),
            //cancel button
            const SizedBox(width: 8),
            Mybutton(text: "Cancel", onPressed: onCancel)
            
            ],)
          ],
        ),
      ),
    );
  }
}
