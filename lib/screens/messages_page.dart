import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/model/item_message.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button_avatar.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_message_tile.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: StoreProvider.of<AppState>(context)
              .state
              .messages
              .map(
                (ItemMessage itemMessage) => SlackButtonAvatar(
                  isConnected: itemMessage.customer.isConnected,
                  imgUrl: itemMessage.customer.imgUrl,
                  imgSize: 40,
                  child: SlackMessageTile(
                    title: itemMessage.title,
                    content: itemMessage.content,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
