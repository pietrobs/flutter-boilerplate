import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';

@immutable
class AppRouter {
  static FluroRouter router = FluroRouter.appRouter;
  final List<AppRoute> _routes;
  final Handler _notFoundHandler;

  const AppRouter({
    required List<AppRoute> routes,
    required Handler notFoundHandler,
  })  : _routes = routes,
        _notFoundHandler = notFoundHandler;

  /// Get all endpoints registered. Remember that, at first you'll need
  /// to [setupRoutes]
  List<AppRoute> get routes => _routes;

  /// Setup the [FluroRouter] basing on the [routes] passed through
  void setupRoutes() {
    router.notFoundHandler = _notFoundHandler;
    for (var route in routes) {
      router.define(route.route, handler: route.handler);
    }
  }
}
