import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

Widget customButton(
        {required String text,
        required VoidCallback onPressed,
        required BuildContext context}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: customButtonColor,
        elevation: 0,
        minimumSize: Size(
          double.infinity,
          MediaQuery.of(context).size.height * 0.09,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(letterSpacing: 1.2),
      ),
    );
