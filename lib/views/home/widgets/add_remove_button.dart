import 'package:flutter/material.dart';

Widget increaseDecrease({required IconData icon}) => CircleAvatar(
      backgroundColor: Color(0xff111527),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
