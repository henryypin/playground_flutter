import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:playground_flutter/features/general/widgets/home_item_view.dart';
import 'package:playground_flutter/pp_ui/pp_ui.dart';

@RoutePage(name: "HomePageRoute")
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              (index) => HomeItemView(title: 'Item ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
