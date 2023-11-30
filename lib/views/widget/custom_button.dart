import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {},
        color: Colors.blue,
        textColor: Colors.white,
        minWidth: MediaQuery.of(context).size.width,
        height: 45,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text("Add to account"),
      ),
    );
  }
}
