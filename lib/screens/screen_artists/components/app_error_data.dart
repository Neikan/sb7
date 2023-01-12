// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/components/app_text.dart';

class AppErrorData extends StatelessWidget {
  const AppErrorData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(text: 'There was an error loading data.'),
          AppText(text: 'Please try later'),
        ],
      ),
    );
  }
}
