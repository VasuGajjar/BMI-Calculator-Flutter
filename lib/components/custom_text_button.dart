import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Function onClick;

  CustomTextButton({this.onClick, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        color: Constants.kAccentColor,
        alignment: Alignment.center,
        child: Text(
          title,
          style: Constants.kBodyTextStyle,
        ),
      ),
    );
  }
}
