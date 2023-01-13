// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/models/app_drawer.dart';

final appDrawerHome = AppDrawerItem(
  route: 'home',
  title: 'Home',
  iconData: Icons.home_outlined,
);

final appDrawerArtists = AppDrawerItem(
  route: 'artists',
  title: 'Artists',
  iconData: Icons.album_outlined,
);

final appDrawerArtist = AppDrawerItem(
  route: 'artist',
  title: 'Artist',
  iconData: Icons.image_outlined,
);

List<AppDrawerItem> appDrawerList = [
  appDrawerHome,
  appDrawerArtists,
];
