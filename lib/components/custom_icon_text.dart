import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onClick;
  final Color color;

  CustomIconText({this.icon, this.text, this.onClick, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: ReusableCard(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 72,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              text,
              style: Constants.kBodyTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
