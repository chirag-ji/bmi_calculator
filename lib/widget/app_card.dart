import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Color _color;
  final Widget child;
  final Function()? onTap;

  AppCard({Color? color, required this.child, this.onTap})
      : this._color = color ?? Color(0xFF1D1E33);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: this.onTap,
        child: Container(
          child: this.child,
          height: 165.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: this._color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
