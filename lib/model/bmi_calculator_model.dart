import 'dart:math';

class CalculatorModel {
  final int height;
  final int weight;

  CalculatorModel({
    required this.height,
    required this.weight,
  });

  // calculate bmi
  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }
// calculate bmi ends here
}
