import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_flutter/my_app.dart';
import 'package:playground_flutter/shared/states/app_start_cubit.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => AppStartCubit(), child: const MyApp()),
  );
}
