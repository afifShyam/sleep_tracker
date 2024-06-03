import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sleep_tracker/src/index.dart';
import 'package:sleep_tracker/src/screen/info/info.dart';

class QuestionRoute implements ManagerRouter {
  QuestionRoute();

  static const questionRoute = 'question';

  static const quesitonPage = '$questionRoute/question_page';
  static const infoPage = '$questionRoute/info_page';

  final List<String> routeHistory = [];

  @override
  void addRoute(String route) {
    routeHistory.add(route);
    log('route question add history: $routeHistory');
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
    log('route in question setting: $settings');
    log('route in question routeName: ${settings.name!}');
    log('route in question object: ${settings.arguments}');

    if (!settings.name!.contains(questionRoute)) {
      return RoutesHandler.handler(settings);
    }

    addRoute(settings.name!);
    // final List<String> route = settings.name!.split('/');
    Widget page = const PageNotFound();
    switch (settings.name!) {
      case quesitonPage:
        page = QuestionPage();
        break;
      case infoPage:
        page = const InfoPage();
        break;
      default:
        page = const InfoPage();
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
