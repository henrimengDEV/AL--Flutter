import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _email = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              'https://upload.wikimedia.org/wikipedia/fr/thumb/7/7e/Slack_logo.svg/1280px-Slack_logo.svg.png'),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email address"),
                CupertinoTextField(
                  placeholder: "name@work-email.com",
                  onChanged: (value) => _email = value,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password"),
                CupertinoTextField(
                  placeholder: "Your password",
                  onChanged: (value) => _password = value,
                ),
              ],
            ),
          ),
          TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () => {
              print('signInWithEmailAndPassword: {email: $_email, password: $_password}'),
              FirebaseAuth.instance.signInWithEmailAndPassword(
                email: _email,
                password: _password,
              )
            },
            child: Text("Sign In"),
          ),
          TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () => {
              FirebaseAuth.instance.signOut()
            },
            child: Text("Sign In with Google"),
          ),
        ],
      ),
    );
  }
}
