import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleep_tracker/src/index.dart';

class HomepageStartPage extends StatefulWidget {
  const HomepageStartPage({
    super.key,
    this.startPage = HomepageRoute.homeRoute,
    this.routeSettings,
  });

  static HomepageStartPageState of(BuildContext context) {
    return context.findAncestorStateOfType<HomepageStartPageState>()!;
  }

  final String startPage;
  final RouteSettings? routeSettings;

  @override
  State<HomepageStartPage> createState() => HomepageStartPageState();
}

class HomepageStartPageState extends State<HomepageStartPage> {
  final _navKey = GlobalKey<NavigatorState>();
  final HomepageRoute homeRoute = HomepageRoute();

  Future<void> onExit() async {
    if (mounted) {
      exit(context);
    }
  }

  void exit(BuildContext ctx) {
    if (homeRoute.routeHistory.length <= 1) {
      // homeRoute.clearRouteHistory();
      Navigator.of(context).pop();
      log('${homeRoute.routeHistory}');
    } else {
      homeRoute.popHistory();
      Navigator.of(ctx).pop();
    }
  }

  void exitUntill(BuildContext ctx, {required String routeName}) {
    homeRoute.clearRouteHistory(fromRoute: routeName);
    Navigator.of(ctx).popUntil(ModalRoute.withName(routeName));
  }

  @override
  void dispose() {
    homeRoute.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(),
        ),
        BlocProvider<SetAlarmBloc>(
          create: (context) =>
              SetAlarmBloc(FirestoreService(GetDataFireBase.currentUserId)),
        ),
      ],
      child: Navigator(
        key: _navKey,
        initialRoute: widget.startPage,
        onGenerateRoute: (settings) {
          if (settings.arguments != null) {
            // If settings.arguments is not null, prioritize settings over widget.routeSettings
            return homeRoute.router(settings);
          } else if (widget.routeSettings?.arguments == null) {
            // If widget.routeSettings.arguments is also null, use settings
            log('execute this now 1');
            log('execute 1: ${widget.startPage}');
            return homeRoute.router(settings);
          } else {
            // Fallback: Use widget.routeSettings
            log('execute this now 2');
            log('execute 2: ${widget.startPage}');
            return homeRoute.router(widget.routeSettings!);
          }
        },
      ),
    );
  }
}
