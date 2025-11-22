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
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "PpCartoonButton:",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                const PpCartoonButton(
                  backgroundColor: Colors.lightGreen,
                  child: Icon(Icons.star, size: 48),
                ),
                PpCartoonButton(
                  backgroundColor: Colors.pink,
                  child: Column(
                    children: [
                      const Icon(Icons.heart_broken, size: 48),
                      Container(
                        color: Colors.purple,
                        padding: const EdgeInsets.all(4),
                        child: const Text('Heart Broken'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
