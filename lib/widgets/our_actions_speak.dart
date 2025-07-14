// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test_project/my_colors/my_colors.dart';

class OurActionsSpeak extends StatelessWidget {
  final String imagePath;
  final String text;
  const OurActionsSpeak({Key? key, required this.imagePath, required this.text})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(imagePath, height: 328, fit: BoxFit.fill),
        SizedBox(height: 20),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Cairo",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
