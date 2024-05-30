import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sleep_tracker/src/index.dart';

class HomepageRoute implements ManagerRouter {
  HomepageRoute();

  static const homeRoute = 'home';

  static const splashscreenRoute = '$homeRoute/splashscreen';
  static const bottomRoute = '$homeRoute/bottomNavbar';
  static const mainpageRoute = '$homeRoute/mainpage';
  static const loginRoute = '$homeRoute/login';
  static const registerRoute = '$homeRoute/register';
  static const logout = '$homeRoute/logout';
  static const alarmSettingRoute = '$homeRoute/alarm_setting';

  final List<String> routeHistory = [];

  @override
  void addRoute(String route) {
    routeHistory.add(route);
    log('route inisiatif add history: $routeHistory');
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

    if (!settings.name!.contains(homeRoute)) {
      return RoutesHandler.handler(settings);
    }

    addRoute(settings.name!);
    // final List<String> route = settings.name!.split('/');
    Widget page = const PageNotFound();
    if (settings.name!.contains(logout)) {
      page = const LoginPage();
    }
    switch (settings.name!) {
      case splashscreenRoute:
        page = const SplashScreen();
        break;
      case loginRoute:
        page = const LoginPage();
      case registerRoute:
        page = const RegisterPage();
      case bottomRoute:
        page = const BottomNavBar();
      case mainpageRoute:
        page = const HomePage();
      case alarmSettingRoute:
        page = const AlarmSettingsView();
      default:
        page = const SplashScreen();
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
