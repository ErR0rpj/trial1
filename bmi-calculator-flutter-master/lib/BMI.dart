import 'dart:math';

class BMI {
  BMI({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'HEALTHY';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getMessage() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight.\nTry to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You are healthy.\nTry to maintain your body as it is.';
    } else {
      return 'You have lower than normal body weight.\nTry to eat a balanced diet and eat more.';
    }
  }
}
