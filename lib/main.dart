import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:playground_flutter/my_app.dart';
import 'package:playground_flutter/pp_ui/theme/pp_theme_provider.dart';
import 'package:playground_flutter/pp_ui/theme/themes/pp_light_theme.dart';
import 'package:playground_flutter/shared/states/app_cubit.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PpThemeProvider(const PpLightTheme()),
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: const MyApp(),
      ),
    ),
  );
}
