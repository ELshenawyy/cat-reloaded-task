import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({super.key, required this.text,required this.text2});
  final String text;
    final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
            text2,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
