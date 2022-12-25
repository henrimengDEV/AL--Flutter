import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/constants/styles.dart';
import 'package:my_first_app/model/customer.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/widgets/common/stateless/default_button_outline.dart';
import 'package:my_first_app/widgets/common/stateless/default_button_with_widget.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_avatar.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button.dart';
import 'package:my_first_app/widgets/slack/stateless/slack_button_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Customer customer = StoreProvider.of<AppState>(context).state.customer;

    return Column(
      children: [
        SlackButtonAvatar(
          imgUrl: customer.imgUrl,
          imgSize: 60,
          gap: 15,
          isConnected: customer.isConnected,
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 15, color: Colors.black),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customer.email,
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
                const Text(
                  "Disponible",
                  style: subText,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 13),
        DefaultButtonOutline(
          icon: Icons.add_circle_outline,
          label: "Mettre à jour votre status",
        ),
        SizedBox(height: 13),
        SlackButton(
          icon: Icons.notifications_off_outlined,
          label: "Suspendre les notifications",
        ),
        DefaultButtonWithWidget(
          icon: Icons.person_off_outlined,
          label: Row(
            children: [
              Text("Me signaler "),
              Text(
                "absent(e)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(),
        SlackButton(
          icon: Icons.save_alt,
          label: "Éléments enregistrés",
        ),
        SlackButton(
          icon: Icons.person_outline,
          label: "Afficher le profil",
        ),
        SlackButton(
          icon: Icons.phone_android,
          label: "Notifications",
        ),
        SlackButton(
          icon: Icons.room_preferences_outlined,
          label: "Préférences",
        ),
      ],
    );
  }
}
