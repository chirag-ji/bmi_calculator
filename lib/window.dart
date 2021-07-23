import 'package:bmi_calculator/app_card.dart';
import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const EdgeInsets bottomContainerMargin = EdgeInsets.only(top: 10.0);

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
              AppCard(),
              AppCard(),
            ],
          ),
          AppCard(),
          Row(
            children: [
              AppCard(),
              AppCard(),
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
