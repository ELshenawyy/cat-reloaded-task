import 'package:cat_task/views/widget/custom_text_field.dart';
import 'package:cat_task/views/widget/texts_under_circle_avatar.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'custom_button.dart';
import 'custom_important_dates.dart';
import 'custom_row_circle_avatar.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({super.key});

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RowCircleImage(radius1: 50, name: 'Fiona', desc: 'Feline | European',),
          Texts(
            text: text1,
            text2: text2,
          ),
          const CustomTextField(hint: "Gender", suffixText: "Female"),
          const CustomTextField(hint: "Size", suffixText: "Medium"),
          const CustomTextField(hint: "Weight", suffixText: "6 kg"),
          const Texts(
            text: "Important Dates",
            text2: '',
          ),
          const CustomDates(
            title: "Birthday",
            date: "3 November 2022",
            old: "3 Y.O",
            icon: Icons.cake_outlined,
          ),
          const CustomDates(
            title: "Adoption Day",
            date: "14 February 2023",
            old: '',
            icon: Icons.home_outlined,
          ),
          const CustomButton(),
        ],
      ),
    );
  }
}
