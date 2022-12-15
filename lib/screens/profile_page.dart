import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/stateless/default_button_outline.dart';
import 'package:my_first_app/widgets/stateless/default_button_with_widget.dart';
import 'package:my_first_app/widgets/stateless/default_channel_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButtonWithWidget(
          icon: Icons.account_box,
          label: Column(
            children: const [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Henri",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Disponible",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ),
            ],
          ),
          iconHeight: 75,
        ),
        SizedBox(height: 13),
        DefaultButtonOutline(
          icon: Icons.add_circle_outline,
          label: "Mettre à jour votre status",
        ),
        SizedBox(height: 13),
        DefaultChannelButton(
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
        DefaultChannelButton(
          icon: Icons.save_alt,
          label: "Éléments enregistrés",
        ),
        DefaultChannelButton(
          icon: Icons.person_outline,
          label: "Afficher le profil",
        ),
        DefaultChannelButton(
          icon: Icons.phone_android,
          label: "Notifications",
        ),
        DefaultChannelButton(
          icon: Icons.room_preferences_outlined,
          label: "Préférences",
        ),
      ],
    );
  }
}
