// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/components/app_header.dart';
import 'package:albums_route/components/app_text.dart';
import 'package:albums_route/models/api_artist.dart';
import 'package:albums_route/utils/common.dart';

class ScreenArtist extends StatelessWidget {
  const ScreenArtist({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, ApiArtist>;

    final _artist = routeArguments['artist']!;

    return Scaffold(
      appBar: AppHeader(
        title: _artist.name.capitalizeEvery(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: AppText(text: _artist.about),
        ),
      ),
    );
  }
}
