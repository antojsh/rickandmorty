import 'package:flutter/material.dart';
import 'package:rickandmorty/app_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: AppColors.mainColor,
                onPressed: () {
                  _goToPage(context, 'characters');
                },
                child: Text('Personajes',
                    style: TextStyle(color: Colors.white))),
            RaisedButton(
                color: AppColors.mainColor,
                onPressed: () {
                  _goToPage(context, 'episodes');
                },
                child: Text('Edpisodios',
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }

  _goToPage(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
