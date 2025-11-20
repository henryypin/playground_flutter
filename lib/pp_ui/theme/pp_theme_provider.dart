import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:playground_flutter/pp_ui/theme/pp_base_theme.dart';

/// A provider class for managing the application's theme.
///
/// This class extends [ChangeNotifier] to notify listeners when the theme changes.
/// It holds a reference to the current [PpBaseTheme] and provides methods to get and set it.
class PpThemeProvider extends ChangeNotifier {
  /// Creates a [PpThemeProvider] with the given initial theme.
  PpThemeProvider(this._theme);

  /// The current theme.
  PpBaseTheme _theme;

  /// Gets the current theme.
  PpBaseTheme get theme => _theme;

  /// Sets a new theme and notifies all listeners.
  set theme(PpBaseTheme theme) {
    _theme = theme;
    notifyListeners();
  }
}

/// A mixin for stateless widgets to easily access the theme provider and theme.
///
/// Use this mixin on classes that extend [StatelessWidget] to get convenient access
/// to the [PpThemeProvider] and the current [PpBaseTheme].
mixin PpThemedWidget<T extends StatelessWidget> on StatelessWidget {
  /// Returns the [PpThemeProvider] from the context.
  PpThemeProvider ppThemeProvider(BuildContext context) =>
      context.watch<PpThemeProvider>();

  /// Returns the current [PpBaseTheme] from the context.
  PpBaseTheme ppTheme(BuildContext context) => ppThemeProvider(context).theme;
}

/// A mixin for stateful widget states to easily access the theme provider and theme.
///
/// Use this mixin on classes that extend [State] to get convenient access
/// to the [PpThemeProvider] and the current [PpBaseTheme].
mixin PpThemedState<T extends StatefulWidget> on State<T> {
  /// Gets the [PpThemeProvider] from the context.
  PpThemeProvider get ppThemeProvider => context.watch<PpThemeProvider>();

  /// Gets the current [PpBaseTheme].
  PpBaseTheme get ppTheme => ppThemeProvider.theme;
}
