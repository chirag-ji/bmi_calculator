import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Color _color;
  final Widget child;

  AppCard({Color? color, required this.child})
      : this._color = color ?? Color(0xFF1D1E33);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: this.child,
        height: 200.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this._color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}