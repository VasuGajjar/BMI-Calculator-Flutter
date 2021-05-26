import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomSlider extends StatelessWidget {
  final int height;
  final Function onChange;

  CustomSlider({this.height, this.onChange});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: Constants.kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'HEIGHT',
            style: Constants.kBodyTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                height.toString(),
                style: Constants.kNumberTextStyle,
              ),
              SizedBox(width: 8),
              Text(
                'CM',
                style: Constants.kBodyTextStyle,
              ),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
              thumbColor: Constants.kAccentColor,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Constants.kInactiveCardColor,
              overlayColor: Constants.kAccentColor.withAlpha(50),
              trackHeight: 2,
            ),
            child: Slider(
              value: height.toDouble(),
              onChanged: onChange,
              min: 120,
              max: 280,
            ),
          )
        ],
      ),
    );
  }
}
