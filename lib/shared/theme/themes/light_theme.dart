import 'package:playground_flutter/shared/theme/base_color.dart';
import 'package:playground_flutter/shared/theme/base_theme.dart';

class LightTheme extends BaseTheme {
  const LightTheme();

  @override
  BaseColor get color => const _LightColor();
}

class _LightColor extends BaseColor {
  const _LightColor();
}
