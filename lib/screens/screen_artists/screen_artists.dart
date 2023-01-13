// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/components/app_divider.dart';
import 'package:albums_route/components/app_drawer.dart';
import 'package:albums_route/components/app_header.dart';
import 'package:albums_route/components/app_loader.dart';
import 'package:albums_route/consts/routes.dart';
import 'package:albums_route/screens/screen_artists/components/app_artist_tile.dart';
import 'package:albums_route/screens/screen_artists/components/app_error_data.dart';
import 'package:albums_route/utils/common.dart';
import 'package:albums_route/utils/fetch_file.dart';

class ScreenArtists extends StatelessWidget {
  const ScreenArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppHeader(
        title: appDrawerArtists.title,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: fetchFileFromAssets('assets/artists.json'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) return AppErrorData();

              final _artists =
                  getArtistsList(jsonDecode(snapshot.data.toString()));

              return ListView.separated(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemCount: _artists.length,
                itemBuilder: (_, index) => AppArtistTile(
                  artist: _artists[index],
                ),
                separatorBuilder: (_, __) => AppDivider(),
              );
            }

            return Center(
              child: AppLoader(),
            );
          },
        ),
      ),
    );
  }
}
