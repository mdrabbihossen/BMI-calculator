import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/constants/widgets/custom_appBar.dart';
import 'package:bmi_calculator/constants/widgets/custom_button.dart';
import 'package:bmi_calculator/constants/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultScreen({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

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
              'Your Result',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            ),
          ),
          // result card starts
          Expanded(
            child: customCard(
              color: Constants().kActiveCardColor,
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    '$resultText',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '$bmiResult',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Normal BMI range:',
                    textAlign: TextAlign.center,
                    style: Constants()
                        .kLabelTextStyle
                        .copyWith(letterSpacing: 1.2),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '18.5 - 25 kg/m2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '$interpretation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 15),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Save Result',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Constants().kInactiveCardColor,
                        minimumSize: Size(
                          double.infinity,
                          MediaQuery.of(context).size.height * 0.09,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // result card ends here
          // re calculate button
          customButton(
            text: 'RE-CALCULATE YOUR BMI',
            onPressed: () {
              Navigator.pop(context);
            },
            context: context,
          ),
        ],
      ),
    );
  }
}
