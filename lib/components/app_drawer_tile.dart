// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/models/app_drawer.dart';
import 'package:albums_route/styles/text.dart';

class AppDrawerTile extends StatelessWidget {
  final AppDrawerItem item;
  final bool? withoutArrow;

  const AppDrawerTile({
    super.key,
    required this.item,
    this.withoutArrow,
  });

  @override
  Widget build(BuildContext context) {
    final _activeRoute = ModalRoute.of(context)!.settings.name;
    final _isActive = _activeRoute == item.route;

    final _handleTap = item.onTap ??
        () {
          Navigator.pop(context);

          if (!_isActive) {
            Navigator.pushReplacementNamed(context, item.route);
          }
        };

    final _leading = Icon(
      item.iconData,
      color: Colors.green,
    );

    final _title = Text(
      item.title,
      style: getBaseTextStyle(fontWeight: FontWeight.w500),
    );

    final _trailing = withoutArrow == true
        ? null
        : Icon(
            Icons.arrow_forward_ios,
            color: Colors.green,
          );

    return ListTile(
      tileColor: _isActive ? Colors.green[50] : null,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 0.0,
      leading: _leading,
      title: _title,
      trailing: _trailing,
      onTap: _handleTap,
    );
  }
}
