import 'package:flutter/material.dart';

class SlackVerticaleSection extends StatelessWidget {
  final String title;
  final String content;

  const SlackVerticaleSection({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.centerLeft,child: Text(title)),
        Align(alignment: Alignment.centerLeft,child: Text(content)),
      ],
    );
  }
}
