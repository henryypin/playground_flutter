import 'package:flutter/material.dart';

class PpBaseColor {
  const PpBaseColor({
    this.background = const Color(0xFFFFFFFF),
    this.appBarBackground = const Color(0xFFFFFFFF),
    this.icon = const Color(0xFF676767),
    this.divider = const Color(0xFFE0E0E0),
    this.border = const Color(0xFF1C1B1F),
    this.shadow = const Color(0x29000000),
    this.appBarTitle = const Color(0xFF212121),
    this.headline = const Color(0xFF212121),
  });

  final Color background;

  final Color appBarBackground;

  final Color icon;

  final Color divider;

  final Color border;

  final Color shadow;

  final Color appBarTitle;

  final Color headline;
}
