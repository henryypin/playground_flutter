import 'package:flutter/material.dart';

import 'package:playground_flutter/shared/theme/base_color.dart';
import 'package:playground_flutter/shared/theme/base_theme.dart';

class DarkTheme extends BaseTheme {
  @override
  BaseColor get color => const _DarkColor();
}

class _DarkColor extends BaseColor {
  const _DarkColor() : super(background: const Color(0xFF121212));
}
