import 'package:flutter/material.dart';

class DefaultButtonWithWidget extends StatelessWidget {
  final IconData icon;
  final Widget label;
  final double? iconHeight;

  const DefaultButtonWithWidget({
    Key? key,
    required this.icon,
    required this.label,
    this.iconHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          size: iconHeight,
        ),
        label: label,
      ),
    );
  }
}
