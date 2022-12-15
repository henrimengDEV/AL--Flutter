import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/widgets/stateful/default_accordion_channels.dart';
import 'package:my_first_app/widgets/stateless/default_channel_button.dart';
import 'package:my_first_app/widgets/stateless/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        SizedBox(height: 10),
        DefaultChannelButton(
          icon: Icons.message_outlined,
          label: "Fils de discussion",
        ),
        DefaultChannelButton(
          icon: Icons.send_outlined,
          label: "Brouillons et envoyés",
        ),
        SizedBox(height: 10),
        Divider(
          height: 2,
        ),
        DefaultAccordionChannels(),
        Divider(
          height: 2,
        ),
        DefaultAccordionChannels(),
        Divider(
          height: 2,
        ),
        DefaultChannelButton(
          icon: Icons.add,
          label: "Ajouter des collaborateurs",
        ),
        StoreConnector<AppState, String>(
          converter: (store) => store.state.isLoading.toString(),
          builder: (_, state) {
            return Text(state);
          },
        )
      ],
    );
    ;
  }
}
