import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:playground_flutter/pp_ui/widgets/app_bar/pp_app_bar.dart';
import 'package:playground_flutter/pp_ui/widgets/button/pp_cartoon_button.dart';

@RoutePage(name: "ButtonPageRoute")
class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PpAppBar(type: .back, title: 'Button'),
      body: SingleChildScrollView(
        padding: const .symmetric(vertical: 16, horizontal: 8),
        child: Center(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              PpCartoonButton(
                backgroundColor: Colors.lightGreen,
                child: const Icon(Icons.star, size: 48),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
