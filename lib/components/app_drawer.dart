// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/components/app_avatar.dart';
import 'package:albums_route/components/app_divider.dart';
import 'package:albums_route/components/app_drawer_tile.dart';
import 'package:albums_route/consts/routes.dart';
import 'package:albums_route/models/app_drawer.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: AppAvatar(),
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                padding: EdgeInsets.zero,
                primary: false,
                separatorBuilder: (context, index) =>
                    const AppDivider(paddingX: 16),
                itemCount: appDrawerList.length,
                itemBuilder: (context, index) =>
                    AppDrawerTile(item: appDrawerList[index]),
              ),
            ),
            const AppDivider(paddingX: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: AppDrawerTile(
                    item: AppDrawerItem(
                      route: '',
                      title: 'Logout',
                      iconData: Icons.logout_outlined,
                      onTap: () {},
                    ),
                    withoutArrow: true,
                  ),
                ),
                Flexible(
                  child: AppDrawerTile(
                    item: AppDrawerItem(
                      route: '',
                      title: 'Registration',
                      iconData: Icons.login,
                      onTap: () {},
                    ),
                    withoutArrow: true,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
