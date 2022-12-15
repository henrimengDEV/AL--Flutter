import 'package:flutter/material.dart';

class DefaultChannelButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final double? height;
  final double? iconHeight;

  const DefaultChannelButton({
    Key? key,
    required this.icon,
    required this.label,
    this.height,
    this.iconHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(icon, size: iconHeight),
        label: Text(label),
      ),
    );
  }
}
