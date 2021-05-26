import 'package:bmi_calculator/components/custom_text_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String Result;
  final double Bmi;
  final String Details;

  ResultPage({this.Result, this.Bmi, this.Details});

  @override
  _ResultPageState createState() => _ResultPageState(Result, Bmi, Details);
}

class _ResultPageState extends State<ResultPage> {
  final String Result;
  final double Bmi;
  final String Details;

  _ResultPageState(this.Result, this.Bmi, this.Details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                'Your Result',
                style: Constants.kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReusableCard(
                color: Constants.kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      Result,
                      style: Constants.kBodyTextStyle
                          .copyWith(color: Colors.green, fontSize: 24),
                    ),
                    Text(
                      Bmi.toStringAsFixed(2),
                      style: Constants.kNumberTextStyle.copyWith(fontSize: 80),
                    ),
                    Text(
                      Details,
                      style: Constants.kBodyTextStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomTextButton(
              title: 'RE-CALCULATE YOUR BMI',
              onClick: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
