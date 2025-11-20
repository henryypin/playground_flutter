import 'package:flutter/material.dart';

class PpBaseColor {
  const PpBaseColor({
    this.background = const Color(0xFFFFFFFF),
    this.appBarBackground = const Color(0xFFFFFFFF),
    this.icon = const Color(0xFF676767),
    this.divider = const Color(0xFFE0E0E0),
  });

  final Color background;

  final Color appBarBackground;

  final Color icon;

  final Color divider;
}
