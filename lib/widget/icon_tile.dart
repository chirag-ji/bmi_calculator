import 'package:flutter/material.dart';

const Color _displayColor = Color(0XFF8D8E98);

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
            style: TextStyle(fontSize: 18.0, color: _displayColor),
          ),
        ),
      ],
    );
  }
}
