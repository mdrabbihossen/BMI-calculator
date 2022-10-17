import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/widgets/custom_button.dart';
import 'package:bmi_calculator/views/home/widgets/custom_card.dart';
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
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              customCard(
                context: context,
                child: Column(
                  children: [
                    // male icon and text
                    Icon(Icons.male, size: 50),
                    Text(
                      'MALE',
                    )
                  ],
                ),
              ),
              customCard(
                context: context,
                child: Container(),
              ),
            ],
          ),
          customCard(
            context: context,
            child: Container(),
          ),
          Row(
            children: [
              customCard(
                context: context,
                child: Container(),
              ),
              customCard(
                context: context,
                child: Container(),
              ),
            ],
          ),
          customButton(
            context: context,
            text: 'Calculate Your BMI'.toUpperCase(),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
