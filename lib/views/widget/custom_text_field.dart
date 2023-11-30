import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, required this.suffixText});

  final String hint;
  final String suffixText;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: TextField(
        cursorColor: pColor,
        maxLines: 1,
        decoration: InputDecoration(
          suffixText: suffixText,
          suffixStyle: const TextStyle(color: Colors.black),
          hintText: hint,
          hintStyle: TextStyle(color: pColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(pColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}

