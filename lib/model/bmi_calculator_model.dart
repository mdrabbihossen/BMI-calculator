import 'dart:math';

class CalculatorModel {
  final int height;
  final int weight;
  double? _bmi;

  CalculatorModel({
    required this.height,
    required this.weight,
  });

  // calculate bmi
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  // calculate bmi ends here


  // get result ends here
  // get interpretation
  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
// get interpretation ends here

}
