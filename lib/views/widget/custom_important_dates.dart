import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomDates extends StatelessWidget {
  const CustomDates(
      {super.key,
      required this.title,
      required this.date,
      required this.old,
      required this.icon});

  final String title;
  final String date;
  final String old;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.greenAccent.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: Colors.green.shade800,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15, color: pColor),
              ),
              Row(
                children: [
                  Text(
                    date,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(width: 160),
                  Text(
                    old,
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
