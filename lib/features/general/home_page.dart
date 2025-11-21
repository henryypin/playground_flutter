import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:playground_flutter/pp_ui/painting/shadow/pp_basic_shadow.dart';
import 'package:playground_flutter/pp_ui/pp_ui.dart';
import 'package:playground_flutter/pp_ui/widgets/gesture/pp_press.dart';

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
      appBar: const PpAppBar(type: .none, title: 'Home'),
      body: SingleChildScrollView(
        padding: const .symmetric(vertical: 16, horizontal: 8),
        child: Center(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(
              20,
              (index) => _buildItem(title: 'Item ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem({required String title}) {
    return PpPress(
      onTap: () {
        print('Tapped on $title');
      },
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
