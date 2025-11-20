import 'package:playground_flutter/pp_ui/theme/pp_base_text_style.dart';

import 'pp_base_color.dart';

class PpBaseTheme {
  const PpBaseTheme();

  PpBaseColor get color => const PpBaseColor();

  PpBaseTextStyle get textStyle => .withColor(color);
}
