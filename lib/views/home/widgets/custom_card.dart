import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';

Widget customCard({required BuildContext context,required Widget child}) => Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height * 0.24,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
