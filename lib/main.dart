import 'package:flutter/material.dart';
import 'package:test_project/screens/index.dart';
import 'my_colors/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: MyColors.darkBlue,
      ),
      home: Index(),
    );
  }
}
