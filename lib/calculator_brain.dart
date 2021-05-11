import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); // gives answer to 1 decimal place
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than is recommended body weight. Getting active can help with this';
    } else if (_bmi > 18.5) {
      return 'Your body weight is nice and healthy - good job!';
    } else {
      return 'Your have a lower than recommended body weight. Changing nutrition habits can help gain needed weight';
    }
  }
}
