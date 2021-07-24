import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdjustmentWidget extends StatelessWidget {
  final Function() onIncrease;
  final Function() onDecrease;

  AdjustmentWidget({required this.onIncrease, required this.onDecrease});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Knob(
          onPressed: this.onDecrease,
          icon: FontAwesomeIcons.minus,
        ),
        SizedBox(width: 10.0),
        _Knob(
          onPressed: this.onIncrease,
          icon: FontAwesomeIcons.plus,
        ),
      ],
    );
  }
}

class _Knob extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;

  _Knob({required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 50.0, width: 50.0),
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0XFF4C4F5E),
      onPressed: this.onPressed,
      child: Icon(this.icon),
    );
  }
}
