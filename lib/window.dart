import 'package:bmi_calculator/app.dart';
import 'package:bmi_calculator/widget/app_card.dart';
import 'package:bmi_calculator/widget/icon_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const EdgeInsets bottomContainerMargin = EdgeInsets.only(top: 10.0);

const Color activeCardColor = Color(0xFF1D1E33);
const Color tappedCardColor = Color(0xFF111328);

class Window extends StatefulWidget {
  const Window({Key? key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  Gender _selectedGender = Gender.MALE;
  double _height = 180.0;

  void _onGenderTap(Gender gender) {
    this.setState(() {
      _selectedGender = gender;
    });
  }

  Color _getTileColor(Gender gen) {
    return _selectedGender == gen ? tappedCardColor : activeCardColor;
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
                color: _getTileColor(Gender.MALE),
                child: IconTile(
                  icon: FontAwesomeIcons.mars,
                  text: 'MALE',
                ),
                onTap: () => _onGenderTap(Gender.MALE),
              ),
              AppCard(
                color: _getTileColor(Gender.FEMALE),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT', style: App.textStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      _height.round().toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(width: 2.0),
                    Text(
                      'cm',
                      style: App.textStyle.copyWith(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                Slider(
                  max: App.maxHeight,
                  min: App.minHeight,
                  activeColor: App.accentActiveColor,
                  inactiveColor: App.accentInactiveColor,
                  value: _height,
                  onChanged: (newHeight) {
                    this.setState(() {
                      _height = newHeight;
                    });
                  },
                ),
              ],
            ),
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
            color: App.accentActiveColor,
            margin: bottomContainerMargin,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
