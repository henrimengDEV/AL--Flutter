import 'package:flutter/material.dart';

class DefaultButtonOutline extends StatelessWidget {
  final IconData icon;
  final String label;

  const DefaultButtonOutline({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 8,
        ),
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(icon),
          label: Text(label),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          ),
        ),
      ),
    );
  }
}
