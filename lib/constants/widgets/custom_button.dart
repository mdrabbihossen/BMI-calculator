import 'package:flutter/material.dart';

Widget customButton(
        {required String text,
        required VoidCallback onPressed,
        required BuildContext context}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color(0xffe81555),
          elevation: 0,
          minimumSize: Size(
            double.infinity,
            MediaQuery.of(context).size.height * 0.09,
          )),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(letterSpacing: 1.2),
      ),
    );
