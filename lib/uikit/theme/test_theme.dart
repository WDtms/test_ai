import 'package:flutter/material.dart';
import 'package:test_ai/uikit/theme/test_color_scheme.dart';
import 'package:test_ai/uikit/theme/test_typography.dart';

@immutable
final class TestTheme {
  final TestColorScheme colorScheme;

  final TestTypography typography;

  const TestTheme({
    required this.colorScheme,
    required this.typography,
  });

  ThemeData createThemeData([Iterable<ThemeExtension>? extensions]) {
    return ThemeData(
      extensions: [colorScheme, typography, ...?extensions],
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: colorScheme.brightness,
        primary: colorScheme.white,
        onPrimary: colorScheme.black,
        secondary: colorScheme.black,
        onSecondary: colorScheme.white,
        error: colorScheme.error700,
        onError: colorScheme.white,
        surface: colorScheme.white,
        onSurface: colorScheme.black,
      ),
      brightness: colorScheme.brightness,
      scaffoldBackgroundColor: colorScheme.white,
      splashColor: Colors.transparent,
      fontFamily: typography.fontFamily,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.gray500,
        selectionColor: colorScheme.gray300,
        selectionHandleColor: colorScheme.gray700,
      ),
    );
  }
}
