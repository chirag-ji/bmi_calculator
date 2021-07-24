import 'package:bmi_calculator/app.dart';
import 'package:flutter/material.dart';

const double bottomHeight = 80.0;
const EdgeInsets bottomMargin = EdgeInsets.only(top: 10.0);

class AppButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const AppButton({this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        color: App.accentActiveColor,
        margin: bottomMargin,
        width: double.infinity,
        height: bottomHeight,
      ),
    );
  }
}
