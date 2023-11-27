import 'package:flutter/material.dart';

ElevatedButton MyButton(
    {required Function f,
    required double height,
    required double width,
    required String cont,
    double rad = 15}) {
  return ElevatedButton(
    onPressed: () {
      f();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 31, 55, 155),
      padding: EdgeInsets.symmetric(
          horizontal: width, vertical: height), // Set the button size
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(rad), // Set the border radius
        // Set the border color
      ),
    ),
    child: Text(
      '$cont',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}
