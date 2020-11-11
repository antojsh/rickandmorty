import 'package:flutter/material.dart';
import 'package:rickandmorty/data/remote/episode_provider.dart';
import 'package:rickandmorty/domain/entities/character.dart';
import 'package:rickandmorty/domain/entities/episode.dart';
import '../../widgets/loading.dart';
import 'list_item_episode.dart';

class ListEpisodes extends StatelessWidget {
  const ListEpisodes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Episode>>(
        future: EpisodesApiProvider().getEpisodes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final List<Episode> episode = snapshot.data;

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: episode.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return ListItemEpisode(episode: episode[index]);
              },
            );
          }
          return LoadingHome();
        },
      ),
    );
  }
}
