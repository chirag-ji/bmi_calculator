import 'package:bmi_calculator/app.dart';
import 'package:bmi_calculator/widget/adjustment_widget.dart';
import 'package:bmi_calculator/widget/app_button.dart';
import 'package:bmi_calculator/widget/app_card.dart';
import 'package:bmi_calculator/widget/icon_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Window extends StatefulWidget {
  const Window({Key? key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  Gender _selectedGender = Gender.MALE;
  double _height = 180.0;
  double _weight = 60.0;
  int _age = 20;

  void _onGenderTap(Gender gender) {
    this.setState(() {
      _selectedGender = gender;
    });
  }

  Color _getTileColor(Gender gen) {
    return _selectedGender == gen ? App.tappedCardColor : App.activeCardColor;
  }

  void _adjustWeight(AdjustmentAction action) {
    double unit = 1;
    if (action == AdjustmentAction.DECREASE) unit = -1;
    setState(() {
      _weight += unit;
    });
  }

  void _adjustAge(AdjustmentAction action) {
    int unit = 1;
    if (action == AdjustmentAction.DECREASE) unit = -1;
    setState(() {
      _age += unit;
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
            color: App.activeCardColor,
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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: App.accentInactiveColor,
                    thumbColor: App.accentActiveColor,
                    overlayColor: App.accentActiveColor.withAlpha(60),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    max: App.maxHeight,
                    min: App.minHeight,
                    value: _height,
                    onChanged: (newHeight) {
                      this.setState(() {
                        _height = newHeight;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              AppCard(
                color: App.activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT', style: App.textStyle),
                    Text(
                      _weight.round().toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    AdjustmentWidget(
                      onIncrease: () =>
                          _adjustWeight(AdjustmentAction.INCREASE),
                      onDecrease: () =>
                          _adjustWeight(AdjustmentAction.DECREASE),
                    ),
                  ],
                ),
              ),
              AppCard(
                color: App.activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style: App.textStyle),
                    Text(
                      _age.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    AdjustmentWidget(
                      onIncrease: () => _adjustAge(AdjustmentAction.INCREASE),
                      onDecrease: () => _adjustAge(AdjustmentAction.DECREASE),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppButton(
            text: 'CALCULATE',
          )
        ],
      ),
    );
  }
}
