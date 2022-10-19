import 'package:flutter/material.dart';

Widget increaseDecrease({
  required IconData icon,
  required VoidCallback onPress,
}) =>
    RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      child: Icon(icon),
    );
