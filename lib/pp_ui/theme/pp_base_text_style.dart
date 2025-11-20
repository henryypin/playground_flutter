import 'package:flutter/material.dart';

import 'package:playground_flutter/pp_ui/theme/pp_base_color.dart';

class PpBaseTextStyle {
  const PpBaseTextStyle({
    this.appBarTitle = _appBarTitle,
    this.headline1 = _headline1,
    this.headline2 = _headline2,
    this.headline3 = _headline3,
  });

  factory PpBaseTextStyle.withColor(PpBaseColor color) {
    return PpBaseTextStyle(
      appBarTitle: _appBarTitle.copyWith(color: color.appBarTitle),
      headline1: _headline1.copyWith(color: color.headline),
      headline2: _headline2.copyWith(color: color.headline),
      headline3: _headline3.copyWith(color: color.headline),
    );
  }

  static const TextStyle _appBarTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  final TextStyle appBarTitle;

  static const TextStyle _headline1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  final TextStyle headline1;

  static const TextStyle _headline2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  final TextStyle headline2;

  static const TextStyle _headline3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  final TextStyle headline3;
}
