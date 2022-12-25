import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/constants/colors.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/redux/loading/loading_actions.dart';
import 'package:my_first_app/screens/conversation_page.dart';
import 'package:my_first_app/screens/home_page.dart';
import 'package:my_first_app/screens/login_page.dart';
import 'package:my_first_app/screens/messages_page.dart';
import 'package:my_first_app/screens/profile_page.dart';
import 'package:my_first_app/screens/search_page.dart';
import 'package:my_first_app/widgets/common/stateless/my_bottom_navigation_bar.dart';
import 'package:my_first_app/widgets/common/stateless/search_bar.dart';

class Slack extends StatefulWidget {
  const Slack({Key? key}) : super(key: key);

  @override
  State<Slack> createState() => _SlackState();
}

class _SlackState extends State<Slack> {
  int _selectedIndex = 0;
  static const List<Widget> _body = [
    HomePage(),
    MessagesPage(),
    ProfilePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (store) => store.state.customer.isConnected,
      builder: (_, state) {
        return !state
            ? const LoginPage()
            : Scaffold(
                appBar: AppBar(
                  title: _selectedIndex == 3
                      ? const SearchBar()
                      : Text(
                          _getTitle(_selectedIndex),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                  centerTitle: false,
                ),
                body: Container(
                  margin: const EdgeInsets.all(8),
                  child: SingleChildScrollView(child: _body.elementAt(_selectedIndex)),
                ),
                bottomNavigationBar: MyBottomNavigationBar(
                  selectedIndex: _selectedIndex,
                  onItemTapped: _onItemTapped,
                ),
                floatingActionButton: Visibility(
                  visible: _selectedIndex != 3 && _selectedIndex != 4,
                  child: FloatingActionButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ConversationPage()),
                      ),
                    },
                    child: const Icon(Icons.edit),
                  ),
                ),
              );
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitle(int index) {
    switch (index) {
      case 1:
        return "Messages directs";
      case 2:
        return "Mentions et réactions";
      case 4:
        return "Vous";
      default:
        return "ESGI";
    }
  }
}
