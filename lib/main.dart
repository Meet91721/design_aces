import 'package:design_aces/my_routes.dart';
import 'package:design_aces/screens/Teams/teams.dart';
import 'package:design_aces/screens/aboutUs/about_us.dart';
import 'package:design_aces/screens/contact/contact_us.dart';
import 'package:design_aces/screens/events/events.dart';
import 'package:design_aces/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (_, __) => const MaterialPage(child: Home()),
        MyRoutes.home: (_, __) => const MaterialPage(child: Home()),
        MyRoutes.about: (_, __) => const MaterialPage(child: AboutUs()),
        MyRoutes.events: (_, __) => const MaterialPage(child: Events()),
        MyRoutes.teams: (_, __) => const MaterialPage(child: Team()),
        MyRoutes.contact: (_, __) => const MaterialPage(child: Contact())
      }),
      debugShowCheckedModeBanner: false,
      title: 'ACES',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
