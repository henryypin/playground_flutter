import 'package:flutter/material.dart';

import 'package:playground_flutter/pp_ui/theme/pp_base_color.dart';

class PpBaseTextStyle {
  const PpBaseTextStyle({this.appBarTitle = _appBarTitle});

  factory PpBaseTextStyle.withColor(PpBaseColor color) {
    return PpBaseTextStyle(
      appBarTitle: _appBarTitle.copyWith(color: color.appBarTitle),
    );
  }

  static const TextStyle _appBarTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  final TextStyle appBarTitle;
}
