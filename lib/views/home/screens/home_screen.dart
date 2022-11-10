import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/constants/widgets/custom_appBar.dart';
import 'package:bmi_calculator/constants/widgets/custom_button.dart';
import 'package:bmi_calculator/model/bmi_calculator_model.dart';
import 'package:bmi_calculator/views/home/widgets/increase_decreas_btn.dart';
import 'package:bmi_calculator/constants/widgets/custom_card.dart';
import 'package:bmi_calculator/views/home/widgets/icon_content.dart';
import 'package:bmi_calculator/views/result/screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int sliderValue = 180;
  int weightValue = 60;
  int ageValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 15,
            ),
            child: Text(
              'Gender',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF3880),
              ),
            ),
          ),
          // Gender selection starts here
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: customCard(
                    onPressed: () => {},
                    color: kInactiveCardColor,
                    child: iconContent(
                      icon: Icons.female,
                      iconColor: Color(0xff808e98),
                      iconText: 'FEMALE',
                      textStyle: TextStyle(
                        color: Color(0xff808e98),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Gender selection ends here

          // height part
          Expanded(
            child: customCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${sliderValue}',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: sliderValue.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    label: '$sliderValue',
                    inactiveColor: Colors.white,
                    activeColor: kPrimaryColor,
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
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$weightValue',
                              style: TextStyle(
                                fontSize: 50,
                                color: kPrimaryColor,
                              ),
                            ),
                            Text(
                              'kg',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            increaseDecrease(
                              onPress: () {
                                setState(() {
                                  weightValue > 0 ? weightValue-- : weightValue;
                                });
                              },
                              icon: Icons.remove,
                            ),
                            increaseDecrease(
                              onPress: () {
                                setState(() {
                                  weightValue++;
                                });
                              },
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
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '$ageValue',
                          style: TextStyle(
                            fontSize: 50,
                            color: kPrimaryColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            increaseDecrease(
                              onPress: () {
                                setState(() {
                                  ageValue > 0 ? ageValue-- : ageValue;
                                });
                              },
                              icon: Icons.remove,
                            ),
                            increaseDecrease(
                              onPress: () {
                                setState(() {
                                  ageValue++;
                                });
                              },
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
            onPressed: () {
              CalculatorModel calc =
                  CalculatorModel(height: sliderValue, weight: weightValue);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmiResult: calc.calculateBMI(),
                  
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
