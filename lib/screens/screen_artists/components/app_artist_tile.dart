// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/consts/routes.dart';
import 'package:albums_route/models/api_artist.dart';
import 'package:albums_route/styles/text.dart';

class AppArtistTile extends StatelessWidget {
  final ApiArtist artist;

  const AppArtistTile({
    super.key,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.album_outlined,
        color: Colors.green,
      ),
      title: Text(
        artist.name.toUpperCase(),
        style: getBaseTextStyle(),
      ),
      onTap: () {
        final _arguments = {'artist': artist};

        Navigator.of(context).pushNamed(
          appDrawerArtist.route,
          arguments: _arguments,
        );
      },
    );
  }
}
