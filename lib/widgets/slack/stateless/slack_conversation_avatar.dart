import 'package:flutter/material.dart';
import 'package:my_first_app/model/customer.dart';

class SlackConversationAvatar extends StatelessWidget {
  final Customer customer;
  final double? height;
  final double imgSize;

  const SlackConversationAvatar({
    Key? key,
    required this.customer,
    this.height,
    this.imgSize = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.network(
        customer.imgUrl,
        width: imgSize,
        height: imgSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
