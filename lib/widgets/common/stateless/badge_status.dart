import 'package:flutter/material.dart';

class BadgeStatus extends StatelessWidget {
  final Color color;
  final Color borderColor;

  const BadgeStatus({
    Key? key,
    required this.color,
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: borderColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
