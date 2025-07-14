// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Media extends StatelessWidget {
  final String IconPath;
  final String text;
  const Media({Key? key, required this.IconPath, required this.text})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xff110b3a),
              radius: 40,
              child: SvgPicture.asset(IconPath),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(text, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
