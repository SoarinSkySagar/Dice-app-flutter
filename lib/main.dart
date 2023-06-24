import 'package:flutter/material.dart';
import 'package:basic_app/color_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ColorContainer(
          Alignment.bottomRight,
          Alignment.topLeft,
          [Colors.deepPurple, Colors.purple],
        ),
      ),
    ),
  );
}
