import 'package:flutter/material.dart';

import 'theme.dart';

class AppBottomSheet extends StatelessWidget {
  final Widget child;
  const AppBottomSheet({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: AppBorders.listTileBorderRadius.bottomLeft,
        ),
        child: Material(
          child: SafeArea(
            bottom: true,
            top: false,
            child: Padding(padding: const EdgeInsets.all(16), child: child),
          ),
        ),
      ),
    );
  }
}
