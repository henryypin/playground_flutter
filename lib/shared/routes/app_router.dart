import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
BuildContext get rootContext => rootNavigatorKey.currentContext!;
StackRouter get autoRouter => AutoRouter.of(rootContext);

@AutoRouterConfig(replaceInRouteName: 'Page')
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: rootNavigatorKey);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: InitPageRoute.page, initial: true),
    CustomRoute(
      page: HomePageRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    AutoRoute(page: ButtonPageRoute.page),
    AutoRoute(page: PopoverPageRoute.page),
  ];
}
