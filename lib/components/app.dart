// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:albums_route/consts/routes.dart';
import 'package:albums_route/utils/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: appDrawerHome.route,
    );
  }
}
