import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:playground_flutter/pp_ui/theme/pp_theme_provider.dart';
import 'package:playground_flutter/shared/routes/app_router.dart';
import 'package:playground_flutter/shared/states/app_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with PpThemedState {
  final _router = AppRouter();

  @override
  void initState() {
    super.initState();
    context.read<AppCubit>().initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Playground Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: ppTheme.color.background),
      routerConfig: _router.config(),
    );
  }
}
