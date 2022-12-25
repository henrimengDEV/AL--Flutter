import 'package:flutter/material.dart';

class SlackVerticalSection extends StatelessWidget {
  final String title;
  final String content;

  const SlackVerticalSection({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft, child: Text(title)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            content,
            style: const TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
