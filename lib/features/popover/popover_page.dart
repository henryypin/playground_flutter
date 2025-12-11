import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:pp_ui/widgets/app_bar/pp_app_bar.dart';

@RoutePage(name: "PopoverPageRoute")
class PopoverPage extends StatefulWidget {
  const PopoverPage({super.key});

  @override
  State<PopoverPage> createState() => _PopoverPageState();
}

class _PopoverPageState extends State<PopoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PpAppBar(type: .back, title: 'Popover'),
      body: Column(),
    );
  }
}
