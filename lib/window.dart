import 'package:bmi_calculator/widget/app_card.dart';
import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const EdgeInsets bottomContainerMargin = EdgeInsets.only(top: 10.0);

const Color activeCardColor = Color(0xFF1D1E33);

class Window extends StatefulWidget {
  const Window({Key? key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              AppCard(
                color: activeCardColor,
              ),
              AppCard(
                color: activeCardColor,
              ),
            ],
          ),
          AppCard(
            color: activeCardColor,
          ),
          Row(
            children: [
              AppCard(
                color: activeCardColor,
              ),
              AppCard(
                color: activeCardColor,
              ),
            ],
          ),
          Container(
            color: bottomContainerColor,
            margin: bottomContainerMargin,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
