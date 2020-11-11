import 'package:flutter/material.dart';

import 'widgets/list_character.dart';

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Personajes'),
        ),
        body: Padding(padding: EdgeInsets.all(20), child: ListCharacters()));
  }
}
