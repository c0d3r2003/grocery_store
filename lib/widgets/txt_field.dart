import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  String hint;
  Function(String) f;
  MyTextField({required this.hint, required this.f, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 50.0,
      child: TextField(
        style: const TextStyle(fontSize: 18.0),

        decoration: InputDecoration(
          hintText: hint,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green, // Change the color here
            ),
          ),
        ),

        onChanged: (text) {
          f(text);
        },
        // call the variable function
      ),
    );
  }
}
