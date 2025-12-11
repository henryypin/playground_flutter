import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:playground_flutter/shared/routes/app_router.dart';
import 'package:playground_flutter/shared/routes/app_router.gr.dart';
import 'package:pp_ui/pp_ui.dart';

@RoutePage(name: "HomePageRoute")
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with PpThemedState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PpAppBar(type: .none, title: "Playground"),
      body: SingleChildScrollView(
        padding: const .symmetric(vertical: 16, horizontal: 8),
        child: Center(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildItem(title: "Button", route: const ButtonPageRoute()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem({required String title, PageRouteInfo? route}) {
    return PpPress(
      onTap: () => route != null ? autoRouter.push(route) : null,
      child: Container(
        width: 100,
        height: 80,
        decoration: BoxDecoration(
          color: ppTheme.color.background,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [PpBasicShadow(color: ppTheme.color.shadow)],
        ),
        alignment: Alignment.center,
        child: Text(title, style: ppTheme.textStyle.headline3),
      ),
    );
  }
}
