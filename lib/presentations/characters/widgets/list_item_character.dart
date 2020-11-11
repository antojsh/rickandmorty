import 'package:flutter/material.dart';
import 'package:rickandmorty/domain/entities/character.dart';

class ListItemCharacter extends StatelessWidget {
  
  const ListItemCharacter({
    Key key,
    @required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.network(character.image),
              Text(
                character.name,
                style: TextStyle(fontSize: 30),
              )
            ],
          )),
    );
  }
}
