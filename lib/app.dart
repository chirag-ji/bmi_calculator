import 'package:flutter/material.dart';

class App {
  static const String appName = 'BMI Calculator';

  static const Color textDisplayColor = Color(0XFF8D8E98);
  static const Color accentActiveColor = Color(0xFFEB1555);
  static const Color accentInactiveColor = Color(0XFF8D8E98);

  static const TextStyle textStyle = TextStyle(
    fontSize: 18.0,
    color: textDisplayColor,
  );

  static const double maxHeight = 220.0;
  static const double minHeight = 80.0;
}

enum Gender {
  MALE,
  FEMALE,
}

enum AdjustmentAction {
  INCREASE,
  DECREASE,
}
