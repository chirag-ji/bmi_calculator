import 'package:bmi_calculator/app.dart';
import 'package:bmi_calculator/widget/app_card.dart';
import 'package:bmi_calculator/widget/icon_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const EdgeInsets bottomContainerMargin = EdgeInsets.only(top: 10.0);

const Color activeCardColor = Color(0xFF1D1E33);
const Color tappedCardColor = Color(0xFF111328);

class Window extends StatefulWidget {
  const Window({Key? key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  Color _maleCardColor = activeCardColor;
  Color _femaleCardColor = activeCardColor;

  void _onGenderTap(Gender gender) {
    bool isMaleTap = gender == Gender.MALE;
    this.setState(() {
      _maleCardColor = isMaleTap ? tappedCardColor : activeCardColor;
      _femaleCardColor = isMaleTap ? activeCardColor : tappedCardColor;
    });
  }

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
                color: _maleCardColor,
                child: IconTile(
                  icon: FontAwesomeIcons.mars,
                  text: 'MALE',
                ),
                onTap: () => _onGenderTap(Gender.MALE),
              ),
              AppCard(
                color: _femaleCardColor,
                child: IconTile(
                  icon: FontAwesomeIcons.venus,
                  text: 'FEMALE',
                ),
                onTap: () => _onGenderTap(Gender.FEMALE),
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
