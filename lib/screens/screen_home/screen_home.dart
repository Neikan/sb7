// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/components/app_drawer.dart';
import 'package:albums_route/components/app_header.dart';
import 'package:albums_route/consts/routes.dart';
import 'package:albums_route/styles/text.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final _title = appDrawerHome.title;

    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppHeader(
        title: _title,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            _title,
            style: titleTextStyles,
          ),
        ),
      ),
    );
  }
}
