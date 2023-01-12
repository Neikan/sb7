// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/models/api_artist.dart';

Brightness getStatusBarBrightness() =>
    Platform.isAndroid ? Brightness.dark : Brightness.light;

List<ApiArtist> getArtistsList(List<dynamic> rawArtists) =>
    rawArtists.map((artist) => ApiArtist.fromJson(artist)).toList();

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
  }

  String capitalizeEvery() {
    return this.split(' ').map((word) => word.capitalize()).toList().join(' ');
  }
}
