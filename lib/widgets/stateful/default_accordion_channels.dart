import 'package:flutter/material.dart';
import 'package:my_first_app/model/item.dart';
import 'package:my_first_app/widgets/stateless/default_channel_button.dart';

class DefaultAccordionChannels extends StatefulWidget {
  const DefaultAccordionChannels({Key? key}) : super(key: key);

  @override
  State<DefaultAccordionChannels> createState() =>
      _DefaultAccordionChannelsState();
}

class _DefaultAccordionChannelsState extends State<DefaultAccordionChannels> {
  final List<Item> items = [
    Item(
      headerValue: "Messages directs",
      expandedValue: "_",
    ),
  ];

  _DefaultAccordionChannelsState();

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
                  children: [
                    DefaultChannelButton(
                      icon: Icons.account_box,
                      label: "Henri",
                    ),
                    DefaultChannelButton(
                      icon: Icons.account_box_outlined,
                      label: "Adrien",
                    ),
                    DefaultChannelButton(
                      icon: Icons.account_box,
                      label: "Benjamin",
                    ),
                    DefaultChannelButton(
                      icon: Icons.account_box,
                      label: "Henri",
                    ),
                    DefaultChannelButton(
                      icon: Icons.account_box_outlined,
                      label: "Adrien",
                    ),
                    DefaultChannelButton(
                      icon: Icons.account_box,
                      label: "Benjamin",
                    )
                  ],
                ))))
            .toList(),
      ),
    );
  }
}
