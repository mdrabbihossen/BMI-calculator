import 'package:flutter/material.dart';

Widget increaseDecrease({
  required IconData icon,
  required VoidCallback onPress,
}) =>
    RawMaterialButton(
      onPressed: onPress,
      
      shape: CircleBorder(),
      fillColor: Color(0xffFF80B3),
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      child: Icon(icon),
    );
