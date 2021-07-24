import 'package:bmi_calculator/app.dart';
import 'package:bmi_calculator/logic/bmi_calculator.dart';
import 'package:bmi_calculator/widget/app_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Result result;

  ResultPage({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(App.appName),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Your Results',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: App.tappedCardColor,
                borderRadius: BorderRadiusDirectional.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    result.status,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    result.bmi,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 100.0,
                    ),
                  ),
                  Text(
                    result.interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ),
          ),
          AppButton(
            text: 'RE-CALCULATE',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
