import 'package:flutter/material.dart';

TextStyle ScreenTittleTextStyle = const TextStyle(
    fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black);

InputDecoration CustomInputDecoration(hintText ) {
  return InputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:
          BorderSide(color: Colors.green, width: 2), // Changed width to 2
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey, width: 2),
    ),
  );
}
