import 'package:flutter/material.dart';

import 'package:playground_flutter/pp_ui/pp_constant.dart';
import 'package:playground_flutter/pp_ui/theme/pp_theme_provider.dart';

enum PpAppBarType { none, back, close }

class PpAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PpAppBar({super.key, this.type = PpAppBarType.back, this.title});

  final PpAppBarType type;

  final String? title;

  @override
  State<PpAppBar> createState() => _PpAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(ppAppBarHeight);
}

class _PpAppBarState extends State<PpAppBar> with PpThemedState<PpAppBar> {
  Widget? _buildLeading() {
    switch (widget.type) {
      case PpAppBarType.none:
        return null;
      case PpAppBarType.back:
        return IconButton(
          icon: Icon(Icons.arrow_back, color: ppTheme.color.icon),
          onPressed: () => Navigator.of(context).pop(),
        );
      case PpAppBarType.close:
        return null;
    }
  }

  List<Widget>? _buildActions() {
    switch (widget.type) {
      case PpAppBarType.none:
        return null;
      case PpAppBarType.back:
        return null;
      case PpAppBarType.close:
        return [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ppTheme.color.appBarBackground,
      title: widget.title != null
          ? Text(
              widget.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ppTheme.textStyle.appBarTitle,
            )
          : null,
      centerTitle: true,
      shape: Border(bottom: BorderSide(color: ppTheme.color.divider, width: 1)),
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: _buildLeading(),
      actions: _buildActions(),
    );
  }
}
