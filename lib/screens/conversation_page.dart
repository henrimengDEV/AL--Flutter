import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/model/customer.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button_avatar.dart';

import '../constants/styles.dart';
import '../widgets/slack/stateless/slack_avatar.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Customer customer = StoreProvider.of<AppState>(context).state.customer;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // appBar: AppBar(
      //   title: Text(customer.email),
      //   centerTitle: false,
      // ),
      children: [
        SlackButtonAvatar(
          imgUrl: customer.imgUrl,
          imgSize: 60,
          gap: 15,
          isConnected: customer.isConnected,
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 15, color: Colors.black),
            child: Column(
              children: [],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Henri (Vous)",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text("Développeur"),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 15),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Ceci est votre espace. Rédigez les premiers jets de vos messages, "
              "dressez des listes de choses à faire ou classez des liens et des fichiers. "
              "Ici, vous pouvez aussi vous parler à vous-même, mais gardez à l'esprit que vous devrez "
              "à la fois poser les questions et fournir les réponses.",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Wrap(
          children: [
            Divider(
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("PHOTO"),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Text("Henri"),
                                ),
                                Text(
                                  "11 h 22",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text("MON MESSAGE .........................."),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
