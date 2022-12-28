import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/common/stateless/badge_date.dart';

class DividerBadge extends StatelessWidget {
  const DividerBadge({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Divider(
          color: Colors.black,
          thickness: 1,
        ),
        Container(
          alignment: Alignment.center,
          child: const BadgeDate(),
        ),
      ],
    );
  }
}
