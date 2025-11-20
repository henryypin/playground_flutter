import 'package:flutter/material.dart';

class PpAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PpAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
