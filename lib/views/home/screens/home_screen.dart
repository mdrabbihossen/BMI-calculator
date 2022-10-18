import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/widgets/custom_appBar.dart';
import 'package:bmi_calculator/constants/widgets/custom_button.dart';
import 'package:bmi_calculator/views/home/widgets/custom_card.dart';
import 'package:bmi_calculator/views/home/widgets/icon_content.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: customCard(
                    color: maleCardColor,
                    context: context,
                    child: iconContent(
                      icon: Icons.male,
                      iconText: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: customCard(
                    color: femaleCardColor,
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
              color: activeCardColor,
              context: context,
              child: Column(),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: customCard(
                  color: activeCardColor,
                  context: context,
                  child: Container(),
                ),
              ),
              Expanded(
                child: customCard(
                  color: activeCardColor,
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
