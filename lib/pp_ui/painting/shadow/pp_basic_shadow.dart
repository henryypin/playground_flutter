import 'package:flutter/material.dart';

class PpBasicShadow extends BoxShadow {
  const PpBasicShadow({required super.color})
    : super(blurRadius: 4, offset: const Offset(2, 2));
}
