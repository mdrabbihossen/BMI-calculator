import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/constants/widgets/custom_appBar.dart';
import 'package:bmi_calculator/constants/widgets/custom_button.dart';
import 'package:bmi_calculator/views/home/widgets/add_remove_button.dart';
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
  int sliderValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 15,
            ),
            child: Text(
              'Select Your Gender',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff8d8e98),
              ),
            ),
          ),
          // Gender selection starts here
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: customCard(
                    onPressed: () =>
                        setState(() => selectedGender = Gender.male),
                    color: selectedGender == Gender.male
                        ? Constants().kActiveCardColor
                        : Constants().kInactiveCardColor,
                    context: context,
                    child: iconContent(
                      icon: Icons.male,
                      textStyle: selectedGender == Gender.male
                          ? TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )
                          : Constants().kLabelTextStyle,
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
                        ? Constants().kActiveCardColor
                        : Constants().kInactiveCardColor,
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
                          : Constants().kLabelTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Gender selection ends here

          // height part
          Expanded(
            child: customCard(
              color: Constants().kActiveCardColor,
              context: context,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: Constants().kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${sliderValue}',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: Constants().kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: sliderValue.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    label: '$sliderValue',
                    inactiveColor: Color(0xff8d8e98),
                    divisions: 6,
                    activeColor: Color(0xffeb1555),
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // height part ends here
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: customCard(
                    color: Constants().kActiveCardColor,
                    context: context,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: Constants().kLabelTextStyle,
                        ),
                        Text(
                          '60',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            increaseDecrease(
                              icon: Icons.remove,
                            ),
                            increaseDecrease(
                              icon: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: customCard(
                    color: Constants().kActiveCardColor,
                    context: context,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: Constants().kLabelTextStyle,
                        ),
                        Text(
                          '20',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            increaseDecrease(
                              icon: Icons.remove,
                            ),
                            increaseDecrease(
                              icon: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
