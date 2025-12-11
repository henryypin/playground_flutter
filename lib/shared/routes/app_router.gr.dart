// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:playground_flutter/features/button/button_page.dart' as _i1;
import 'package:playground_flutter/features/general/home_page.dart' as _i2;
import 'package:playground_flutter/features/general/init_page.dart' as _i3;
import 'package:playground_flutter/features/popover/popover_page.dart' as _i4;

/// generated route for
/// [_i1.ButtonPage]
class ButtonPageRoute extends _i5.PageRouteInfo<void> {
  const ButtonPageRoute({List<_i5.PageRouteInfo>? children})
    : super(ButtonPageRoute.name, initialChildren: children);

  static const String name = 'ButtonPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.ButtonPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute({List<_i5.PageRouteInfo>? children})
    : super(HomePageRoute.name, initialChildren: children);

  static const String name = 'HomePageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.InitPage]
class InitPageRoute extends _i5.PageRouteInfo<void> {
  const InitPageRoute({List<_i5.PageRouteInfo>? children})
    : super(InitPageRoute.name, initialChildren: children);

  static const String name = 'InitPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.InitPage();
    },
  );
}

/// generated route for
/// [_i4.PopoverPage]
class PopoverPageRoute extends _i5.PageRouteInfo<void> {
  const PopoverPageRoute({List<_i5.PageRouteInfo>? children})
    : super(PopoverPageRoute.name, initialChildren: children);

  static const String name = 'PopoverPageRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.PopoverPage();
    },
  );
}
