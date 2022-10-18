import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/views/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Constants().kBackgroundColor,
        scaffoldBackgroundColor: Constants().kBackgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
