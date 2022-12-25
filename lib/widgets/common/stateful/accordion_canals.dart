import 'package:flutter/material.dart';
import 'package:my_first_app/model/item.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button.dart';

class AccordionCanals extends StatefulWidget {
  const AccordionCanals({Key? key}) : super(key: key);

  @override
  State<AccordionCanals> createState() => _AccordionCanalsState();
}

class _AccordionCanalsState extends State<AccordionCanals> {
  final List<Item> items = [
    Item(
      headerValue: "Canaux",
      expandedValue: "_",
    ),
  ];

  _AccordionCanalsState();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cardColor: Colors.transparent,
      ),
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            items[index].isExpanded = !isExpanded;
          });
        },
        expandedHeaderPadding: EdgeInsets.zero,
        elevation: 0,
        children: items
            .map<ExpansionPanel>((Item item) => (ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: item.isExpanded,
                  headerBuilder: (context, isExpanded) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      child: Text(item.headerValue),
                    );
                  },
                  body: Column(
                    children: const [
                      SlackButton(
                        icon: Icons.tag,
                        label: "Général",
                      ),
                      SlackButton(
                        icon: Icons.add,
                        label: "Ajouter un canal",
                      ),
                    ],
                  ),
                )))
            .toList(),
      ),
    );
  }
}
