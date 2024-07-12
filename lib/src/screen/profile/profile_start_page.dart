import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleep_tracker/src/index.dart';

class ProfileStartPage extends StatefulWidget {
  const ProfileStartPage({
    super.key,
    this.startPage = ProfileRoute.profileRoute,
    this.routeSettings,
    this.logout,
  });

  static ProfileStartPageState of(BuildContext context) {
    return context.findAncestorStateOfType<ProfileStartPageState>()!;
  }

  final String startPage;
  final RouteSettings? routeSettings;
  final void Function()? logout;

  @override
  State<ProfileStartPage> createState() => ProfileStartPageState();
}

class ProfileStartPageState extends State<ProfileStartPage> {
  final _navKey = GlobalKey<NavigatorState>();
  final ProfileRoute profileRoute = ProfileRoute();

  Future<void> onExit() async {
    if (mounted) {
      exit(context);
    }
  }

  void exit(BuildContext ctx) {
    log('exit length: ${profileRoute.routeHistory.length}');

    if (profileRoute.routeHistory.length <= 1) {
      // profileRoute.clearRouteHistory();
      Navigator.of(context).pop();
      log('exit from all page: ${profileRoute.routeHistory}');
    } else {
      profileRoute.popHistory();
      Navigator.of(ctx).pop();
      log('exit 1 page: ${profileRoute.routeHistory}');
    }
  }

  void exitUntill(BuildContext ctx, {required String routeName}) {
    profileRoute.clearRouteHistory(fromRoute: routeName);
    Navigator.of(ctx).popUntil(ModalRoute.withName(routeName));
  }

  @override
  void dispose() {
    profileRoute.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(create: (context) => RegisterBloc()),
        BlocProvider<ProfileBloc>(create: (context) => ProfileBloc()),
      ],
      child: Navigator(
        key: _navKey,
        initialRoute: widget.startPage,
        onGenerateRoute: (settings) {
          if (settings.arguments != null) {
            // If settings.arguments is not null, prioritize settings over widget.routeSettings
            return profileRoute.router(settings);
          } else if (widget.routeSettings?.arguments == null) {
            // If widget.routeSettings.arguments is also null, use settings
            log('execute this now 1');
            log('execute 1: ${widget.startPage}');
            return profileRoute.router(settings);
          } else {
            // Fallback: Use widget.routeSettings
            log('execute this now 2');
            log('execute 2: ${widget.startPage}');
            return profileRoute.router(widget.routeSettings!);
          }
        },
      ),
    );
  }
}
