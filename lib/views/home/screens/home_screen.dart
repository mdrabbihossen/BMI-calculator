import 'package:bmi_calculator/constants/constants.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gender selection starts here
          Row(
            children: [
              Expanded(
                child: customCard(
                  onPressed: () => setState(() => selectedGender = Gender.male),
                  color: selectedGender == Gender.male
                      ? Constants().activeCardColor
                      : Constants().inactiveCardColor,
                  context: context,
                  child: iconContent(
                    icon: Icons.male,
                    textStyle: selectedGender == Gender.male
                        ? TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )
                        : Constants().labelTextStyle,
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
                      ? Constants().activeCardColor
                      : Constants().inactiveCardColor,
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
                        : Constants().labelTextStyle,
                  ),
                ),
              )
            ],
          ),
          // Gender selection ends here

          // height part
          Expanded(
            child: customCard(
              color: Constants().activeCardColor,
              context: context,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: Constants().labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '180',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: Constants().labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: 180,
                    min: 120,
                    max: 220,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
          // height part ends here
          Row(
            children: [
              Expanded(
                child: customCard(
                  color: Constants().activeCardColor,
                  context: context,
                  child: Container(),
                ),
              ),
              Expanded(
                child: customCard(
                  color: Constants().activeCardColor,
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
