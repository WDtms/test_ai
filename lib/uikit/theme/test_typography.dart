import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'test_typography.tailor.dart';

/// Типография приложения.
@TailorMixin()
class TestTypography extends ThemeExtension<TestTypography> with _$TestTypographyTailorMixin {
  @override
  final String fontFamily;

  // font-size: 32, line-height: 100%, letter-spacing: 3%
  @override
  final TextStyle displayXl;

  // font-size: 24, line-height: 100%, letter-spacing: 3%
  @override
  final TextStyle displayLgMedium;

  // font-size: 24, line-height: 100%, letter-spacing: 3%
  @override
  final TextStyle displayLgRegular;

  // font-size: 20, line-height: 1, letter-spacing: 0%
  @override
  final TextStyle displayMdRegular;

  // font-size: 20, line-height: 100%, letter-spacing: 0%
  // Если хотите использовать этот стиль с line-height: 120% укажите 1.2
  @override
  final TextStyle displayMdMedium;

  // font-size: 16, line-height: 110%, letter-spacing: 0%
  @override
  final TextStyle textXlMedium;

  // font-size: 16, line-height: 100%, letter-spacing: 0%
  // Если хотите использовать этот стиль с line-height: 140% укажите 1.4
  // Если хотите использовать этот стиль с letter-spacing: 3% укажите 0.48
  @override
  final TextStyle textXlRegular;

  // font-size: 14, line-height: 100%, letter-spacing: 0%
  // Если хотите использовать этот стиль с line-height: 130% укажите 1.3
  // Если хотите использовать этот стиль с line-height: 140% укажите 1.4
  // Если хотите использовать этот стиль с letter-spacing: 2% укажите 0.28
  @override
  final TextStyle textLgRegular;

  // font-size: 14, line-height: 100%, letter-spacing: 2% (0.28)
  @override
  final TextStyle textLgMedium;

  // font-size: 13, line-height: 120%, letter-spacing: 0%
  @override
  final TextStyle textMdRegular;

  // font-size: 12, line-height: 100%, letter-spacing: 0%
  // Если хотите использовать этот стиль с line-height: 120% укажите 1.2
  @override
  final TextStyle textSmRegular;

  // font-size: 11, line-height: 100%, letter-spacing: 0%
  @override
  final TextStyle textXsRegular;

  // font-size: 11, line-height: 120%, letter-spacing: 3%
  @override
  final TextStyle textXsMedium;

  // font-size: 10, line-height: 100%, letter-spacing: 0%
  @override
  final TextStyle textXxsRegular;

  // font-size: 10, line-height: 100%, letter-spacing: 0%
  @override
  final TextStyle textXxsMedium;

  const TestTypography(
    this.fontFamily,
    this.displayXl,
    this.displayLgRegular,
    this.displayMdRegular,
    this.displayMdMedium,
    this.textXlMedium,
    this.displayLgMedium,
    this.textXlRegular,
    this.textLgRegular,
    this.textLgMedium,
    this.textMdRegular,
    this.textSmRegular,
    this.textXsRegular,
    this.textXsMedium,
    this.textXxsRegular,
    this.textXxsMedium,
  );

  TestTypography.common()
    : fontFamily = 'Basis',
      displayXl = const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.96,
      ),
      displayLgMedium = const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.96,
      ),
      displayLgRegular = const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.96,
      ),
      displayMdRegular = const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      displayMdMedium = const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      textXlMedium = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.1,
      ),
      textXlRegular = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      textLgRegular = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      textLgMedium = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.28,
      ),
      textMdRegular = const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 1.2,
      ),
      textSmRegular = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      textXsRegular = const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
      textXsMedium = const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.33,
        height: 1.2,
      ),
      textXxsRegular = const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      textXxsMedium = const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      );

  /// Getting text theme from context.
  static TestTypography of(BuildContext context) => Theme.of(context).extension<TestTypography>()!;
}
