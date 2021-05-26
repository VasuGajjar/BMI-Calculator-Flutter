import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomValueSelector extends StatelessWidget {
  final String title;
  final int value;
  final Function onMinus;
  final Function onPlus;

  CustomValueSelector({this.title, this.value, this.onMinus, this.onPlus});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: Constants.kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: Constants.kBodyTextStyle,
          ),
          Text(
            value.toString(),
            style: Constants.kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: onMinus,
                shape: CircleBorder(),
                color: Constants.kInactiveCardColor,
                height: 60,
                elevation: 0,
                highlightElevation: 0,
                child: Center(child: Icon(FontAwesomeIcons.minus)),
              ),
              MaterialButton(
                onPressed: onPlus,
                shape: CircleBorder(),
                color: Constants.kInactiveCardColor,
                height: 60,
                elevation: 0,
                highlightElevation: 0,
                child: Center(child: Icon(FontAwesomeIcons.plus)),
              )
            ],
          )
        ],
      ),
    );
  }
}
