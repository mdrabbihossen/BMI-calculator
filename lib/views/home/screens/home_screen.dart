import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/widgets/custom_appBar.dart';
import 'package:bmi_calculator/constants/widgets/custom_button.dart';
import 'package:bmi_calculator/views/home/widgets/custom_card.dart';
import 'package:bmi_calculator/views/home/widgets/icon_content.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Male Tap');
                  },
                  child: customCard(
                    context: context,
                    child: iconContent(icon: Icons.male, iconText: 'MALE'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Female Tapped');
                  },
                  child: customCard(
                    context: context,
                    child: iconContent(
                      icon: Icons.female,
                      iconText: 'FEMALE',
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: customCard(
              context: context,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height'),
                  Text('110Cm'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: customCard(
                  context: context,
                  child: Container(),
                ),
              ),
              Expanded(
                child: customCard(
                  context: context,
                  child: Container(),
                ),
              ),
            ],
          ),
          customButton(
            context: context,
            text: 'CALCULATE YOUR BMI',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
