import 'package:flutter/material.dart';

Widget customCard({
  required Widget child,
  required Color color,
  VoidCallback? onPressed,
}) =>
    GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
