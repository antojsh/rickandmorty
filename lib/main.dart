import 'package:flutter/material.dart';
import 'package:rickandmorty/theme.dart';

import 'presentations/characters/characters_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: lightTheme(),
      home: CharactersPage(),
    );
  }
}
