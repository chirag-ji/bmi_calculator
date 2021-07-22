import 'package:bmi_calculator/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: App.appName,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF1E1B31),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(App.appName),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Body Text Here'),
        ),
        floatingActionButton: Theme(
          data: ThemeData.light(),
          child: FloatingActionButton(
            onPressed: () => {},
            child: Icon(Icons.admin_panel_settings),
          ),
        ),
      ),
    );
  }
}
