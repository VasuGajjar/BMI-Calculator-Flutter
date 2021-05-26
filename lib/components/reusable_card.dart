import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Color color;

  const ReusableCard({this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: child,
      margin: EdgeInsets.all(4),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
    );
  }
}
