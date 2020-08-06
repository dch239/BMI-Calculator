import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Got to get that workout going!';
    } else if (_bmi > 18.5) {
      return 'Spot on! Great Work.';
    } else {
      return 'Seems like we need more calories!';
    }
  }
}
