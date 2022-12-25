import 'package:flutter/material.dart';
import 'package:my_first_app/constants/colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onItemTapped;
  final Color color;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.color = slackPurple,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: color,
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          backgroundColor: color,
          icon: Icon(Icons.message_outlined),
          activeIcon: Icon(Icons.message),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          backgroundColor: color,
          icon: Icon(Icons.alternate_email_rounded),
          activeIcon: Icon(Icons.alternate_email_rounded),
          label: 'Mentions',
        ),
        BottomNavigationBarItem(
          backgroundColor: color,
          icon: Icon(Icons.search),
          activeIcon: Icon(Icons.search),
          label: 'Rechercher',
        ),
        BottomNavigationBarItem(
          backgroundColor: color,
          icon: Icon(Icons.account_circle_outlined),
          activeIcon: Icon(Icons.account_circle),
          label: 'Vous',
        ),
      ],
    );
  }
}
