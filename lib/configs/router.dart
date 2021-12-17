import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:outside/pages/initial_page.dart';
import 'package:outside/pages/night_page.dart';

class AppRoutes {
  static final routeNotFoundHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("Route not found");

      return null;
    },
  );

  static final root = AppRoute(
    '/',
    Handler(
      handlerFunc: (context, parameters) => const InitialPage(),
    ),
  );

  static final night = AppRoute(
    '/night',
    Handler(
      handlerFunc: (context, parameters) => const NightPage(),
    ),
  );

  static final List<AppRoute> routes = [
    root,
    night,
  ];
}
