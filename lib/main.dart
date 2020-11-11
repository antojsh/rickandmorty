import 'package:flutter/material.dart';
import 'package:rickandmorty/presentations/home/home_page.dart';
import 'package:rickandmorty/presentations/splash/splash_page.dart';
import 'package:rickandmorty/theme.dart';

import 'presentations/characters/characters_page.dart';
import 'presentations/episodes/episodes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: lightTheme(),
      home: SplashScreen(),
      routes: {
        'home': (_) => HomePage(),
        'episodes': (_) => EpisodesPage(),
        'characters': (_) => CharactersPage(),
      },
    );
  }
}
