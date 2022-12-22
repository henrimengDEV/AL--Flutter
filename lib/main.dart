import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_app/redux/app_state.dart';
import 'package:my_first_app/redux/app_state_reducer.dart';
import 'package:my_first_app/slack.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseAuth.instance.idTokenChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = Store<AppState>(
    appReducer,
    initialState: const AppState.initialState(),
    middleware: [thunkMiddleware],
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          // const TextStyle(fontWeight: FontWeight.w400)
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontWeight: FontWeight.w400),
                  ))),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontWeight: FontWeight.w400),
                  ))),
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        home: const Slack(),
      ),
    );
  }
}
