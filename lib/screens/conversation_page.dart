import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/model/customer.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/widgets/common/stateless/divider_with_badge.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_conversation_feed.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_conversation_header.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SlackConversationHeader(),
                    const DividerBadge(),
                    Column(
                        children : List.generate(4, (index) => SlackConversationFeed())
                    )
                  ],
                ),
              ),
            ),
            const CupertinoTextField(
              placeholder: "Ton message",
            ),
          ],
        ),
      ),
    );
  }
}
