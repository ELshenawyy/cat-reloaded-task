import 'package:cat_task/views/widget/custom_appbar.dart';
import 'package:cat_task/views/widget/custom_body.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          CustomAppBar(
            title: "Add Profile",
            icon: Icons.arrow_back,
          ),
          CustomBody(),
        ],
      ),
    );
  }
}
