import 'dart:math';

import 'package:bmi_calculator/model/Data.dart';

class BMICalculator {
  static Result getBMI(Data data) {
    double bmi = data.weight / pow(data.height / 100, 2);
    return Result(
      bmi: bmi.toStringAsFixed(2),
      status: _getBmiStatus(bmi),
      interpretation: _getBmiIntrepretation(bmi),
    );
  }

  static String _getBmiStatus(double bmi) {
    if (bmi > 25.0) {
      return 'OVERWEIGHT';
    } else if (bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  static String _getBmiIntrepretation(double bmi) {
    if (bmi > 25.0) {
      return 'Too heavy, avoid too much eating and exercise regularly.';
    } else if (bmi > 18.5) {
      return 'All good :)';
    } else {
      return 'You should eat more.';
    }
  }
}

class Result {
  final String bmi;
  final String status;
  final String interpretation;

  Result(
      {required this.bmi, required this.status, required this.interpretation});
}
