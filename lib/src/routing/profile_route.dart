import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sleep_tracker/src/index.dart';

class ProfileRoute implements ManagerRouter {
  ProfileRoute();

  static const profileRoute = 'profile';

  static const dashProfileRoute = '$profileRoute/dashboard_profile';
  static const editProfileRoute = '$profileRoute/edit_profile';

  final List<String> routeHistory = [];

  @override
  void addRoute(String route) {
    routeHistory.add(route);
    log('route profile add history: $routeHistory');
  }

  @override
  void clearRouteHistory({String? fromRoute}) {
    if (fromRoute != null) {
      try {
        routeHistory.removeRange(
            routeHistory.indexOf(fromRoute) + 1, routeHistory.length);
      } catch (_) {
        log('Route does not exist');
      }
    } else {
      routeHistory.clear();
      log('route add history: $routeHistory');
    }
  }

  @override
  void popHistory() {
    try {
      routeHistory.removeLast();
    } catch (e) {
      log(e.toString());
    }
    log('route history: $routeHistory');
  }

  @override
  void reset() {
    clearRouteHistory();
    log('route add history: $routeHistory');
  }

  @override
  Route router(RouteSettings settings) {
    log('route in inisiatif setting: $settings');
    log('route in inisiatif routeName: ${settings.name!}');
    log('route in inisiatif object: ${settings.arguments}');

    if (!settings.name!.contains(profileRoute)) {
      return RoutesHandler.handler(settings);
    }

    addRoute(settings.name!);
    // final List<String> route = settings.name!.split('/');
    Widget page = const PageNotFound();
    switch (settings.name!) {
      case dashProfileRoute:
        page = const Profile();
        break;
      case editProfileRoute:
        final dynamic args = settings.arguments;
        page = EditProfilePage(
          user: args['user'],
        );
        break;
      default:
        page = const Profile();
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
