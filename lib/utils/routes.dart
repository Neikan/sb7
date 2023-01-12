// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/consts/routes.dart';
import 'package:albums_route/screens/screen_artist/screen_artist.dart';
import 'package:albums_route/screens/screen_artists/screen_artists.dart';
import 'package:albums_route/screens/screen_home/screen_home.dart';
import 'package:albums_route/screens/screen_not_found/screen_not_found.dart';

Map<String, Widget Function(BuildContext _)> routes = {
  appDrawerHome.route: (_) => const ScreenHome(),
  appDrawerArtists.route: (_) => const ScreenArtists(),
  appDrawerArtist.route: (_) => const ScreenArtist(),
};

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        final route = routes[settings.name];

        return route != null ? route(context) : const ScreenNotFound();
      },
    );
