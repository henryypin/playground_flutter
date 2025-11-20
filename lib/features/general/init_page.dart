import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_flutter/shared/routes/app_router.dart';
import 'package:playground_flutter/shared/routes/app_router.gr.dart';
import 'package:playground_flutter/shared/states/app_cubit.dart';

@RoutePage(name: "InitPageRoute")
class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  void initState() {
    super.initState();
    _navigate(context.read<AppCubit>().state.status);
  }

  void _navigate(AppStatus status) {
    switch (status) {
      case AppStatus.success:
        autoRouter.replace(const HomePageRoute());
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        _navigate(state.status);
      },
      child: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
