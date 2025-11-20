import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:playground_flutter/my_app.dart';
import 'package:playground_flutter/shared/states/app_start_cubit.dart';
import 'package:playground_flutter/shared/theme/theme_provider.dart';
import 'package:playground_flutter/shared/theme/themes/light_theme.dart';

void main() {
  runApp(
    Provider(
      create: (context) => ThemeProvider(const LightTheme()),
      child: BlocProvider(
        create: (context) => AppStartCubit(),
        child: const MyApp(),
      ),
    ),
  );
}
