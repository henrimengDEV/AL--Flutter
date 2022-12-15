import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/redux/loading/loading_actions.dart';
import 'package:my_first_app/screens/home_page.dart';
import 'package:my_first_app/screens/messages_page.dart';
import 'package:my_first_app/screens/profile_page.dart';
import 'package:my_first_app/screens/search_page.dart';
import 'package:my_first_app/widgets/stateless/my_bottom_navigation_bar.dart';
import 'package:my_first_app/widgets/stateless/search_bar.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const SearchBar(),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: SingleChildScrollView(child: _body.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButton: StoreConnector<AppState, VoidCallback>(
        converter: (store) => () => {
              store.state.isLoading
                  ? store.dispatch(LoadingActions.NotLoading)
                  : store.dispatch(LoadingActions.Loading)
            },
        builder: (_, callback) => FloatingActionButton(
          onPressed: callback,
          child: const Icon(Icons.edit),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
