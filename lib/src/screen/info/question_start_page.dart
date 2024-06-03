import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleep_tracker/src/index.dart';

class QuestionStartPage extends StatefulWidget {
  const QuestionStartPage({
    super.key,
    this.startPage = QuestionRoute.questionRoute,
    this.routeSettings,
  });

  static QuestionStartPageState of(BuildContext context) {
    return context.findAncestorStateOfType<QuestionStartPageState>()!;
  }

  final String startPage;
  final RouteSettings? routeSettings;

  @override
  State<QuestionStartPage> createState() => QuestionStartPageState();
}

class QuestionStartPageState extends State<QuestionStartPage> {
  final _navKey = GlobalKey<NavigatorState>();
  final QuestionRoute questionRoute = QuestionRoute();

  Future<void> onExit() async {
    if (mounted) {
      exit(context);
    }
  }

  void exit(BuildContext ctx) {
    if (questionRoute.routeHistory.length <= 1) {
      // questionRoute.clearRouteHistory();
      Navigator.of(context).pop();
      log('${questionRoute.routeHistory}');
    } else {
      questionRoute.popHistory();
      Navigator.of(ctx).pop();
    }
  }

  void exitUntill(BuildContext ctx, {required String routeName}) {
    questionRoute.clearRouteHistory(fromRoute: routeName);
    Navigator.of(ctx).popUntil(ModalRoute.withName(routeName));
  }

  @override
  void dispose() {
    questionRoute.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuestionsBloc>(
          create: (context) => QuestionsBloc(),
        ),
      ],
      child: Navigator(
        key: _navKey,
        initialRoute: widget.startPage,
        onGenerateRoute: (settings) {
          if (settings.arguments != null) {
            // If settings.arguments is not null, prioritize settings over widget.routeSettings
            return questionRoute.router(settings);
          } else if (widget.routeSettings?.arguments == null) {
            // If widget.routeSettings.arguments is also null, use settings
            log('execute this now 1');
            log('execute 1: ${widget.startPage}');
            return questionRoute.router(settings);
          } else {
            // Fallback: Use widget.routeSettings
            log('execute this now 2');
            log('execute 2: ${widget.startPage}');
            return questionRoute.router(widget.routeSettings!);
          }
        },
      ),
    );
  }
}
