import 'package:flutter/material.dart';

const double _defaultOnPressScale = 0.95;

/// Виджет с анимацией вдавливания при нажатии кнопки.
class AwnScalePressable extends StatefulWidget {
  const AwnScalePressable({
    required this.child,
    super.key,
    this.onTap,
    this.behavior = HitTestBehavior.opaque,
  });

  final Widget child;

  final VoidCallback? onTap;

  final HitTestBehavior behavior;

  @override
  State<AwnScalePressable> createState() => _AwnScalePressableState();
}

class _AwnScalePressableState extends State<AwnScalePressable> {
  bool isOnPress = false;

  @override
  Widget build(BuildContext context) {
    if (widget.onTap == null) return widget.child;

    return GestureDetector(
      onTapDown: (_) => setState(() => isOnPress = true),
      onTapUp: (_) => setState(() => isOnPress = false),
      onTap: () => widget.onTap?.call(),
      onTapCancel: () => setState(() => isOnPress = false),
      behavior: widget.behavior,
      child: _ScaleWrapper(
        isOnPress: isOnPress,
        child: widget.child,
      ),
    );
  }
}

/// Implicit Animation. Wrapper over [AnimatedScale].
///
/// A single click animation for all buttons in the application. When you press
/// the button is reduced by the `duration` fixed in the `duration` constant by the size of the
/// `scale`.
class _ScaleWrapper extends StatelessWidget {
  /// @nodoc.
  const _ScaleWrapper({
    required this.isOnPress,
    required this.child,
  });

  /// What will be animated.
  final Widget child;

  /// Whether the button is currently pressed.
  final bool isOnPress;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      // When clicked, decreases the content from the animation.
      scale: isOnPress ? _defaultOnPressScale : 1,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 150),
      child: child,
    );
  }
}
