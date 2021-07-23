import 'package:bmi_calculator/app.dart';
import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Center(
          child: Text(
            this.text,
            style: App.textStyle,
          ),
        ),
      ],
    );
  }
}
