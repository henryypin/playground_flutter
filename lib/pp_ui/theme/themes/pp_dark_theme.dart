import 'package:flutter/material.dart';

import '../pp_base_color.dart';
import '../pp_base_theme.dart';

class PpDarkTheme extends PpBaseTheme {
  @override
  PpBaseColor get color => const _PpDarkColor();
}

class _PpDarkColor extends PpBaseColor {
  const _PpDarkColor()
    : super(
        background: const Color(0xFF121212),
        appBarBackground: const Color(0xFF121212),
        icon: const Color(0xFFB3B3B3),
        divider: const Color(0xFF3A3A3A),
        appBarTitle: const Color(0xFFFFFFFF),
      );
}
