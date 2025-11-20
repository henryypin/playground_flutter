import 'package:flutter/material.dart';

import 'package:playground_flutter/shared/theme/base_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider(this._theme);

  BaseTheme _theme;

  BaseTheme get theme => _theme;

  set theme(BaseTheme theme) {
    _theme = theme;
    notifyListeners();
  }
}
