// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test_project/my_colors/my_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color backGround;
  final double radius;
  final Color textColor;
  final double width;
  final double height;
  final Color? borderColor;
  const MyButton({
    Key? key,
    required this.text,
    required this.backGround,
    required this.radius,
    required this.textColor,
    required this.width,
    required this.height,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size(width, height)),
        backgroundColor: WidgetStatePropertyAll(backGround),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
        side: WidgetStatePropertyAll(
          BorderSide(color: borderColor ?? MyColors.purple),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: textColor, fontFamily: "Cairo"),
      ),
    );
  }
}
