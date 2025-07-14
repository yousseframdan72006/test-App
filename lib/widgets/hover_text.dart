import 'package:flutter/material.dart';

import 'package:test_project/my_colors/my_colors.dart';

class HoverText extends StatefulWidget {
  final String text;

  const HoverText({super.key, required this.text});

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 300),
            style: TextStyle(
              color: _isHovered ? MyColors.purple : Colors.white,
              fontWeight: _isHovered ? FontWeight.w700 : FontWeight.w500,
              fontSize: 24,
              fontFamily: "Cairo",
            ),
            child: Text(widget.text),
          ),

          AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: _isHovered ? 1.0 : 0.0,
            child: Container(
              margin: EdgeInsets.only(top: 35),
              width: 100,
              height: 6,
              decoration: BoxDecoration(
                color: MyColors.purple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
