import 'package:flutter/material.dart';
import 'package:my_first_app/constants/styles.dart';

class SlackMessageTile extends StatelessWidget {
  final String title;
  final String content;

  const SlackMessageTile({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(content, style: subText, overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
        const Text("7 dec.", style: subText),
      ],
    );
  }
}
