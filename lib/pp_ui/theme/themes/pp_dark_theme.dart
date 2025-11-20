import 'package:flutter/material.dart';

import 'package:playground_flutter/pp_ui/theme/pp_base_color.dart';
import 'package:playground_flutter/pp_ui/theme/pp_base_theme.dart';

class PpDarkTheme extends PpBaseTheme {
  @override
  PpBaseColor get color => const _PpDarkColor();
}

class _PpDarkColor extends PpBaseColor {
  const _PpDarkColor() : super(background: const Color(0xFF121212));
}
