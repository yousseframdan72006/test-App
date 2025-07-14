// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailAndPhone extends StatelessWidget {
  final String iconPath;
  final String text;
  const EmailAndPhone({Key? key, required this.iconPath, required this.text})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(iconPath),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Cairo',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
