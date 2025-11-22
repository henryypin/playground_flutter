import 'package:flutter/material.dart';

import 'package:playground_flutter/pp_ui/pp_ui.dart';
import 'package:playground_flutter/pp_ui/utils/pp_color_util.dart';
import 'package:playground_flutter/pp_ui/widgets/gesture/pp_press.dart';

class PpCartoonButton extends StatefulWidget {
  const PpCartoonButton({
    super.key,
    this.borderWidth = 4,
    this.borderRadius = 16,
    this.outerBorderColor,
    this.innerBorderColor = Colors.white,
    this.backgroundColor,
    this.onTap,
    required this.child,
  });

  final double borderWidth;

  final double borderRadius;

  final Color? outerBorderColor;

  final Color innerBorderColor;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final Widget child;

  @override
  State<PpCartoonButton> createState() => _PpCartoonButtonState();
}

class _PpCartoonButtonState extends State<PpCartoonButton>
    with PpThemedState<PpCartoonButton> {
  @override
  Widget build(BuildContext context) {
    return PpPress(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: widget.borderWidth),
        decoration: BoxDecoration(
          color: PpColorUtil.darken(widget.innerBorderColor),
          border: Border.all(
            color: widget.outerBorderColor ?? ppTheme.color.border,
            width: widget.borderWidth,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            border: Border.all(
              color: widget.innerBorderColor,
              width: widget.borderWidth,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius + 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.borderRadius + 2),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
