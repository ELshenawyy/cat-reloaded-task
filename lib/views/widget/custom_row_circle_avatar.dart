import 'package:flutter/material.dart';

import '../../constants.dart';

class RowCircleImage extends StatelessWidget {
  const RowCircleImage({super.key, required this.radius1, required this.name, required this.desc});
  final double radius1;
  final String name;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 51),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 60,
                child: Container(
                  decoration: BoxDecoration(
                    color: pColor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(57),
                  ),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: radius1,
                  backgroundImage: AssetImage(catImage),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
               Text(
                 name,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 12, color: pColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
