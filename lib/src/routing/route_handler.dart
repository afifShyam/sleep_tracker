import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sleep_tracker/src/index.dart';
import 'package:sleep_tracker/src/screen/info/question_start_page.dart';

class RoutesHandler {
  RoutesHandler._();

  static const List<String> routes = [];

  static Route handler(RouteSettings settings) {
    log('route handler: ${settings.name!.split('/').first}');
    log('route handler: ${settings.arguments}');
    log('route handler: ${settings.name}');
    Widget page = const PageNotFound();

    switch (settings.name!.split('/').first) {
      case HomepageRoute.homeRoute:
        page = HomepageStartPage(
          startPage: settings.name!,
          routeSettings: settings,
        );
        break;
      case ProfileRoute.profileRoute:
        page = ProfileStartPage(
          startPage: settings.name!,
          routeSettings: settings,
        );
        break;
      case QuestionRoute.questionRoute:
        page = QuestionStartPage(
          startPage: settings.name!,
          routeSettings: settings,
        );
        break;
      // default:
    }

    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}
