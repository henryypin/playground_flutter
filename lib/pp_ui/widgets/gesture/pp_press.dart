import 'package:flutter/material.dart';

class PpPress extends StatefulWidget {
  const PpPress({super.key, this.onTap, required this.child});

  final void Function()? onTap;
  final Widget child;

  @override
  State<PpPress> createState() => _PpPressState();
}

class _PpPressState extends State<PpPress> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      value: 0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.animateTo(1, curve: Curves.easeOutCubic);
  }

  void _onTapUp(TapUpDetails details) {
    _animateBack();
    widget.onTap?.call();
  }

  void _onTapCancel() {
    _animateBack();
  }

  void _animateBack() {
    if (mounted) _controller.animateTo(0, curve: Curves.easeOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            transformHitTests: true,
            scale: 1 - 0.05 * _controller.value,
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
