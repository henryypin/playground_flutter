import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

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

mixin ThemedWidget<T extends StatelessWidget> on StatelessWidget {
  ThemeProvider themeProvider(BuildContext context) =>
      context.watch<ThemeProvider>();

  BaseTheme theme(BuildContext context) => themeProvider(context).theme;
}

mixin ThemedState<T extends StatefulWidget> on State<T> {
  ThemeProvider get themeProvider => context.watch<ThemeProvider>();

  BaseTheme get theme => themeProvider.theme;
}
