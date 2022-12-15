import 'package:flutter/material.dart';

class SlackVerticaleSectionWithTimer extends StatelessWidget {
  final String title;
  final String content;

  const SlackVerticaleSectionWithTimer({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Align(alignment: Alignment.centerLeft, child: Text(title)),
            Align(alignment: Alignment.centerLeft, child: Text(content)),
          ],
        ),
        Align(alignment: Alignment.topRight, child: Text(content)),
      ],
    );
  }
}
