// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/components/app_header.dart';
import 'package:albums_route/components/app_text.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Not found',
      ),
      body: SafeArea(
        child: Center(
          child: AppText(text: 'Page does not exist'),
        ),
      ),
    );
  }
}
