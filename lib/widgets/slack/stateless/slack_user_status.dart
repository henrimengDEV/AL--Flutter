import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/widgets/common/stateless/badge_status.dart';

import '../../../model/customer.dart';
import '../../../redux/app_state.dart';

class SlackUserStatus extends StatelessWidget {
  const SlackUserStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Customer customer = StoreProvider.of<AppState>(context).state.customer;

    return Row(
      children: [
        BadgeStatus(
          color: customer.isConnected ? Colors.green : Colors.white,
          borderColor: customer.isConnected ? Colors.white : Colors.black26,
        ),
        Text(
          customer.email,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
