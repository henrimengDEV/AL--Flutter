import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/stateless/default_button_outline.dart';
import 'package:my_first_app/widgets/stateless/default_button_with_widget.dart';
import 'package:my_first_app/widgets/stateless/search_bar.dart';
import 'package:my_first_app/widgets/stateless/slack_verticale_section.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final List<ItemMessage> items = [
    ItemMessage(title: "Sylvie", content: "j'ai tenté"),
    ItemMessage(title: "Adrien", content: "La parole est libre tant fait pas"),
    ItemMessage(title: "Bryan", content: "faut aller sur place"),
    ItemMessage(title: "Benjamin", content: "Vous: bah ouais!"),
    ItemMessage(title: "Nicolas", content: "Vous: ahahah y a encore du chemin !"),
    ItemMessage(title: "Thomas", content: "Vous: oklm et toi ?"),
    ItemMessage(title: "Sylvie", content: "j'ai tenté"),
    ItemMessage(title: "Adrien", content: "La parole est libre tant fait pas"),
    ItemMessage(title: "Bryan", content: "faut aller sur place"),
    ItemMessage(title: "Benjamin", content: "Vous: bah ouais!"),
    ItemMessage(title: "Nicolas", content: "Vous: ahahah y a encore du chemin !"),
    ItemMessage(title: "Thomas", content: "Vous: oklm et toi ?"),
    ItemMessage(title: "Sylvie", content: "j'ai tenté"),
    ItemMessage(title: "Adrien", content: "La parole est libre tant fait pas"),
    ItemMessage(title: "Bryan", content: "faut aller sur place"),
    ItemMessage(title: "Benjamin", content: "Vous: bah ouais!"),
    ItemMessage(title: "Nicolas", content: "Vous: ahahah y a encore du chemin !"),
    ItemMessage(title: "Thomas", content: "Vous: oklm et toi ?"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        Column(
          children: items
              .map((ItemMessage itemMessage) => (DefaultButtonWithWidget(
                    iconHeight: 40,
                    icon: Icons.account_box,
                    label: SlackVerticaleSection(
                      title: itemMessage.title,
                      content: itemMessage.content,
                    ),
                  )))
              .toList(),
        ),
      ],
    );
  }
}

class ItemMessage {
  String title;
  String content;

  ItemMessage({
    required this.title,
    required this.content,
  });
}
