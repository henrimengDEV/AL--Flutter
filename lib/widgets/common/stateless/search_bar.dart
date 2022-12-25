import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  static const Color _color = Color.fromRGBO(255, 255, 255, 0.2);

  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 10,
      ),
      child: SizedBox(
        height: 40,
        child: CupertinoSearchTextField(
          backgroundColor: _color,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
          placeholder: "Rechercher des messages et des fichiers",
          placeholderStyle: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
          itemColor: Colors.white,
        ),
      ),
    );
  }
}
