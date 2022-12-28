import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/common/stateful/accordion_canals.dart';
import 'package:my_first_app/widgets/common/stateful/default_accordion_channels.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 10),
        SlackButton(
          icon: Icons.message_outlined,
          label: "Fils de discussion",
        ),
        SlackButton(
          icon: Icons.send_outlined,
          label: "Brouillons et envoyés",
        ),
        SizedBox(height: 10),
        Divider(
          height: 2,
        ),
        AccordionCanals(),
        Divider(
          height: 2,
        ),
        DefaultAccordionChannels(),
        Divider(
          height: 2,
        ),
        SlackButton(
          icon: Icons.add,
          label: "Ajouter des collaborateurs",
        ),
      ],
    );
    ;
  }
}
