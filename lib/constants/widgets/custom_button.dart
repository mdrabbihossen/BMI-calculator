import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required String text,
  required VoidCallback onPressed,
  required BuildContext context,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Constants().kCustomButtonColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        minimumSize: Size(
          double.infinity,
          MediaQuery.of(context).size.height * 0.1,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(letterSpacing: 1.2),
      ),
    );
