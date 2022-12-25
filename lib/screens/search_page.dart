import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlackButton(icon: Icons.contact_page_outlined, label: "Parcourir les membres"),
        SlackButton(icon: Icons.manage_search, label: "Parcourir les canaux"),
        SizedBox(
          height: 34,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recherchers récentes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
        ),
        SlackButton(icon: Icons.access_time_outlined, label: "de:@Elise Tronel"),
        SlackButton(icon: Icons.access_time_outlined, label: "dans: J+3"),
        SlackButton(icon: Icons.access_time_outlined, label: "dans: questionnaire"),
        SlackButton(icon: Icons.access_time_outlined, label: "dans: QUESTIONNAIRE"),
        SizedBox(
          height: 34,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Préciser votre recherche",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
        ),
        SlackButton(icon: Icons.add_box_outlined, label: "de:@Elise Tronel"),
        SlackButton(icon: Icons.add_box_outlined, label: "dans: J+3"),
        SlackButton(icon: Icons.add_box_outlined, label: "dans: questionnaire"),
        SlackButton(icon: Icons.add_box_outlined, label: "dans: QUESTIONNAIRE"),
      ],
    );
  }
}
