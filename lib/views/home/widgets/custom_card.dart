import 'package:flutter/material.dart';

Widget customCard({
  required BuildContext context,
  required Widget child,
  required Color color,
  VoidCallback? onPressed,
}) =>
    GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height * 0.24,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: child,
        ),
      ),
    );
