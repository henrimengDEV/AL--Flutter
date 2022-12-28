import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BadgeDate extends StatelessWidget {
  const BadgeDate({Key? key}) : super(key: key);

  static var now = DateTime.now();
  static var formatter = DateFormat('d MMM');
  static String formattedDate = formatter.format(now);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(formattedDate),
    );
  }
}
