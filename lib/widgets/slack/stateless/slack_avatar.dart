import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/common/stateless/badge_status.dart';

class SlackAvatar extends StatelessWidget {
  final String imgUrl;
  final bool isConnected;
  final double? imgSize;

  const SlackAvatar({
    Key? key,
    required this.imgUrl,
    required this.isConnected,
    this.imgSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imgUrl,
              width: imgSize,
              height: imgSize,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -3,
            right: -3,
            child: BadgeStatus(
              color: isConnected ? Colors.green : Colors.white,
              borderColor: isConnected ? Colors.white : Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
