import 'package:flutter/material.dart';

class CommonInputDecoration {
  static InputDecorationTheme dropdown = InputDecorationTheme(
    hintStyle: const TextStyle(color: Colors.white70),
    suffixIconColor: Colors.white,
    prefixIconColor: Colors.white,

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white, width: 1.5),
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    ),
  );
}
