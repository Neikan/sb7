// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:albums_route/styles/text.dart';
import 'package:albums_route/utils/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;

  const AppHeader({
    super.key,
    required this.title,
    this.leading,
  });

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  AppBar build(BuildContext context) {
    final _brightness = getStatusBarBrightness();

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: _brightness,
        statusBarBrightness: _brightness,
      ),
      backgroundColor: Colors.white,
      title: Text(title, style: headerTextStyles),
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
    );
  }
}
