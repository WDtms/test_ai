import 'package:flutter/material.dart';
import 'package:test_ai/uikit/loader/test_loader.dart';
import 'package:test_ai/uikit/theme/test_color_scheme.dart';
import 'package:test_ai/uikit/theme/test_typography.dart';

import 'enums/test_button_size.dart';
import 'enums/test_button_state.dart';
import 'enums/test_button_style.dart';

class TestButton extends StatelessWidget {
  const TestButton.lg({
    required this.onPressed,
    required this.child,
    required this.state,
    required this.style,
    this.isBottomButton = false,
    super.key,
  }) : size = TestButtonSize.large;

  const TestButton.md({
    required this.onPressed,
    required this.child,
    required this.state,
    required this.style,
    this.isBottomButton = false,
    super.key,
  }) : size = TestButtonSize.medium;

  const TestButton.sm({
    required this.onPressed,
    required this.child,
    required this.state,
    required this.style,
    this.isBottomButton = false,
    super.key,
  }) : size = TestButtonSize.small;

  const TestButton({
    required this.onPressed,
    required this.child,
    required this.state,
    required this.size,
    required this.style,
    this.isBottomButton = false,
    super.key,
  });

  final VoidCallback onPressed;
  final Widget child;
  final TestButtonState state;
  final TestButtonSize size;
  final TestButtonStyle style;
  final bool isBottomButton;

  @override
  Widget build(BuildContext context) {
    final colorScheme = TestColorScheme.of(context);
    final typography = TestTypography.of(context);

    final isLoading = state == TestButtonState.loading;
    final inActive = state == TestButtonState.inactive;
    final height = switch (size) {
      TestButtonSize.large => 50.0,
      TestButtonSize.medium => 40.0,
      TestButtonSize.small => 32.0,
    };

    final int a;

    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: inActive || isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.pressed) && !isLoading) {
                switch (style) {
                  case TestButtonStyle.primary:
                    return colorScheme.gray950;
                  case TestButtonStyle.secondary:
                    return colorScheme.gray100;
                  case TestButtonStyle.simple:
                }
              }

              if (state == TestButtonState.inactive) {
                switch (style) {
                  case TestButtonStyle.primary || TestButtonStyle.secondary:
                    return colorScheme.gray100;
                  case TestButtonStyle.simple:
                    return Colors.transparent;
                }
              }

              if (state
                      // ignore: prefer-switch-with-enums
                      case TestButtonState.active || TestButtonState.loading) {
                switch (style) {
                  case TestButtonStyle.primary:
                    return colorScheme.black;
                  case TestButtonStyle.secondary:
                    return colorScheme.gray50;
                  case TestButtonStyle.simple:
                }
              }

              return null;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (state == TestButtonState.inactive) {
                return colorScheme.gray300;
              }
              if (state == TestButtonState.active) {
                switch (style) {
                  case TestButtonStyle.primary:
                    return colorScheme.white;
                  case TestButtonStyle.secondary || TestButtonStyle.simple:
                    return colorScheme.gray900;
                }
              }

              return Colors.transparent;
            },
          ),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(isBottomButton ? 0 : 4),
              ),
            ),
          ),
          splashFactory: NoSplash.splashFactory,
        ),
        child: isLoading
            ? Center(
                child: TestLoader(
                  color: style == TestButtonStyle.primary ? colorScheme.white : colorScheme.black,
                ),
              )
            : DefaultTextStyle.merge(
                style: typography.textSmRegular,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                child: child,
              ),
      ),
    );
  }
}
