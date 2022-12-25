import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_avatar.dart';

class SlackButtonAvatar extends StatelessWidget {
  final String imgUrl;
  final bool isConnected;
  final Widget child;
  final double? height;
  final double? imgSize;
  final double? gap;

  const SlackButtonAvatar({
    Key? key,
    required this.imgUrl,
    required this.child,
    this.height,
    this.imgSize = 25,
    this.isConnected = false,
    this.gap = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            SlackAvatar(imgUrl: imgUrl, imgSize: imgSize, isConnected: isConnected),
            SizedBox(width: gap),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
