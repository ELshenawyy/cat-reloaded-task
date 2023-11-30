import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: pColor,
          ),
          const SizedBox(
            width: 100,
          ),
          Text(
            title,
            style: TextStyle(color: pColor, fontSize: 15),
          ),
        ],

        // appBar: AppBar(
        //   shadowColor: Colors.white,
        //   elevation: 0.2,
        //   leading: Icon(
        //     icon,
        //     size: 16,
        //     color: Colors.grey,
        //   ),
        //   title: Text(
        //     title,
        //     style: const TextStyle(color: Colors.grey, fontSize: 15),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        // ),
      ),
    );
  }
}
