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
                child: customCard(
                  onPressed: () => setState(() => selectedGender = Gender.male),
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  context: context,
                  child: iconContent(
                    icon: Icons.male,
                    textStyle: selectedGender == Gender.male
                        ? TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )
                        : labelTextStyle,
                    iconText: 'MALE',
                    iconColor: selectedGender == Gender.male
                        ? Colors.white
                        : Color(0xff808e98),
                  ),
                ),
              ),
              Expanded(
                child: customCard(
                  onPressed: () =>
                      setState(() => selectedGender = Gender.female),
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  context: context,
                  child: iconContent(
                    icon: Icons.female,
                    iconColor: selectedGender == Gender.female
                        ? Colors.white
                        : Color(0xff808e98),
                    iconText: 'FEMALE',
                    textStyle: selectedGender == Gender.female
                        ? TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )
                        : labelTextStyle,
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
