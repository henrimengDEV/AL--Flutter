import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_conversation_avatar.dart';

import '../../../model/customer.dart';
import '../../../redux/app_state.dart';

class SlackConversationFeed extends StatelessWidget {
  const SlackConversationFeed({Key? key}) : super(key: key);

  static var now = DateTime.now();
  static var formatter = DateFormat("H'h' mm");
  static String formattedDate = formatter.format(now);
  // static String monMessage = "MON MESSAGE ..........................";
  static String monMessage = "Ceci est votre espace. Rédigez les premiers jets de vos messages, "
  "dressez des listes de choses à faire ou classez des liens et des fichiers. "
  "Ici, vous pouvez aussi vous parler à vous-même, mais gardez à l'esprit que vous devrez "
  "à la fois poser les questions et fournir les réponses.";

  @override
  Widget build(BuildContext context) {
    Customer customer = StoreProvider.of<AppState>(context).state.customer;

    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlackConversationAvatar(customer: customer, imgSize: 45),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(customer.email),
                      const SizedBox(width: 5),
                      Text(
                        formattedDate,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    monMessage,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
