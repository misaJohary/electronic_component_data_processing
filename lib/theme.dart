import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  primaryColor: Colors.blue,
  useMaterial3: true,
  backgroundColor: const Color.fromRGBO(232, 243, 252, 1),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color.fromRGBO(232, 243, 252, 1),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide.none,
    ),
  ),
);
