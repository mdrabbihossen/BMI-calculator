import 'package:flutter/material.dart';

Widget iconContent({
  required IconData icon,
  required String iconText,
  TextStyle? textStyle,
  Color? iconColor,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: iconColor,
        ),
        Text(
          iconText,
          style: textStyle,
        ),
      ],
    );
