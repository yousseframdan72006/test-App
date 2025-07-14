// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:test_project/my_colors/my_colors.dart';

class OurServices extends StatelessWidget {
  final String imagePath;
  final String title;
  final String supTitle;
  const OurServices({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.supTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      height: 300,
      decoration: BoxDecoration(
        color: MyColors.lightPurple,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(imagePath, height: 64, width: 64),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.right,
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.right,
            supTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
