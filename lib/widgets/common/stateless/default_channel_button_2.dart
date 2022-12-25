import 'package:flutter/material.dart';
import 'package:my_first_app/model/customer.dart';

class DefaultChannelButton2 extends StatelessWidget {
  final Customer customer;
  final double? height;
  final double imgSize;

  const DefaultChannelButton2({
    Key? key,
    required this.customer,
    this.height,
    this.imgSize = 25,
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
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                customer.imgUrl,
                width: imgSize,
                height: imgSize,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10)),
            Text(customer.email),
          ],
        ),
      ),
    );
  }
}
