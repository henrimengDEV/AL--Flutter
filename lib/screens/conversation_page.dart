import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/model/customer.dart';
import 'package:my_first_app/redux/app_state.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Customer customer = StoreProvider.of<AppState>(context).state.customer;

    return Scaffold(
      appBar: AppBar(
        title: Text(customer.email),
        centerTitle: false,
      ),
      body: Center(child: Text("data")),
    );
  }
}
