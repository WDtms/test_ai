import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'test_color_scheme.tailor.dart';

/// Цветовая схема приложения.
@TailorMixin()
class TestColorScheme extends ThemeExtension<TestColorScheme> with _$TestColorSchemeTailorMixin {
  @override
  final Brightness brightness;

  @override
  final Color white;

  @override
  final Color black;

  @override
  final Color gray950;

  @override
  final Color gray900;

  @override
  final Color gray800;

  @override
  final Color gray700;

  @override
  final Color gray600;

  @override
  final Color gray500;

  @override
  final Color gray400;

  @override
  final Color gray300;

  @override
  final Color gray200;

  @override
  final Color gray100;

  @override
  final Color gray50;

  @override
  final Color error950;

  @override
  final Color error900;

  @override
  final Color error800;

  @override
  final Color error700;

  @override
  final Color error600;

  @override
  final Color error500;

  @override
  final Color error400;

  @override
  final Color error300;

  @override
  final Color error200;

  @override
  final Color error100;

  @override
  final Color error50;

  @override
  final Color positive;

  @override
  final Color warning;

  /// Basic light scheme.
  const TestColorScheme.light()
    : brightness = Brightness.light,
      white = const Color(0xFFFFFFFF),
      black = const Color(0xFF2C2C2C),
      gray950 = const Color(0xFF3F3F3F),
      gray900 = const Color(0xFF525252),
      gray800 = const Color(0xFF666666),
      gray700 = const Color(0xFF797979),
      gray600 = const Color(0xFF8C8C8C),
      gray500 = const Color(0xFF9F9F9F),
      gray400 = const Color(0xFFB2B2B2),
      gray300 = const Color(0xFFC5C5C5),
      gray200 = const Color(0xFFD9D9D9),
      gray100 = const Color(0xFFECECEC),
      gray50 = const Color(0xFFF7F7F7),
      error950 = const Color(0xFF4B0000),
      error900 = const Color(0xFF710000),
      error800 = const Color(0xFF9E0000),
      error700 = const Color(0xFFE20000),
      error600 = const Color(0xFFFF0909),
      error500 = const Color(0xFFFF3A3A),
      error400 = const Color(0xFFFF6B6B),
      error300 = const Color(0xFFFF9D9D),
      error200 = const Color(0xFFFFCECE),
      error100 = const Color(0xFFFFDCDC),
      error50 = const Color(0xFFFEF1F1),
      positive = const Color(0xFF01E07D),
      warning = const Color(0xFFFFD21E);

  const TestColorScheme({
    required this.brightness,
    required this.white,
    required this.black,
    required this.gray950,
    required this.gray900,
    required this.gray800,
    required this.gray700,
    required this.gray600,
    required this.gray500,
    required this.gray400,
    required this.gray300,
    required this.gray200,
    required this.gray100,
    required this.gray50,
    required this.error950,
    required this.error900,
    required this.error800,
    required this.error700,
    required this.error600,
    required this.error500,
    required this.error400,
    required this.error300,
    required this.error200,
    required this.error100,
    required this.error50,
    required this.positive,
    required this.warning,
  });

  /// Получение цветовой темы из контекста.
  static TestColorScheme of(BuildContext context) => Theme.of(context).extension<TestColorScheme>()!;
}
