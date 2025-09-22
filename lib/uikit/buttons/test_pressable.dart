import 'package:flutter/material.dart';

class AwnPressable extends StatelessWidget {
  const AwnPressable({
    required this.onTap,
    required this.child,
    super.key,
  });

  final VoidCallback onTap;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
