import 'package:flutter/material.dart';

class HomeItemView extends StatelessWidget {
  const HomeItemView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(14),
      child: Text(title),
    );
  }
}
