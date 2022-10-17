import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xff808e98),
);

Widget iconContent({
  required IconData icon,
  required String iconText,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
        ),
        Text(
          iconText,
          style: labelTextStyle,
        ),
      ],
    );
