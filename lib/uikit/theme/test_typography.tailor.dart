// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'test_typography.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$TestTypographyTailorMixin on ThemeExtension<TestTypography> {
  String get fontFamily;
  TextStyle get displayXl;
  TextStyle get displayLgMedium;
  TextStyle get displayLgRegular;
  TextStyle get displayMdRegular;
  TextStyle get displayMdMedium;
  TextStyle get textXlMedium;
  TextStyle get textXlRegular;
  TextStyle get textLgRegular;
  TextStyle get textLgMedium;
  TextStyle get textMdRegular;
  TextStyle get textSmRegular;
  TextStyle get textXsRegular;
  TextStyle get textXsMedium;
  TextStyle get textXxsRegular;
  TextStyle get textXxsMedium;

  @override
  TestTypography copyWith({
    String? fontFamily,
    TextStyle? displayXl,
    TextStyle? displayLgMedium,
    TextStyle? displayLgRegular,
    TextStyle? displayMdRegular,
    TextStyle? displayMdMedium,
    TextStyle? textXlMedium,
    TextStyle? textXlRegular,
    TextStyle? textLgRegular,
    TextStyle? textLgMedium,
    TextStyle? textMdRegular,
    TextStyle? textSmRegular,
    TextStyle? textXsRegular,
    TextStyle? textXsMedium,
    TextStyle? textXxsRegular,
    TextStyle? textXxsMedium,
  }) {
    return TestTypography(
      fontFamily ?? this.fontFamily,
      displayXl ?? this.displayXl,
      displayLgMedium ?? this.displayLgMedium,
      displayLgRegular ?? this.displayLgRegular,
      displayMdRegular ?? this.displayMdRegular,
      displayMdMedium ?? this.displayMdMedium,
      textXlMedium ?? this.textXlMedium,
      textXlRegular ?? this.textXlRegular,
      textLgRegular ?? this.textLgRegular,
      textLgMedium ?? this.textLgMedium,
      textMdRegular ?? this.textMdRegular,
      textSmRegular ?? this.textSmRegular,
      textXsRegular ?? this.textXsRegular,
      textXsMedium ?? this.textXsMedium,
      textXxsRegular ?? this.textXxsRegular,
      textXxsMedium ?? this.textXxsMedium,
    );
  }

  @override
  TestTypography lerp(covariant ThemeExtension<TestTypography>? other, double t) {
    if (other is! TestTypography) return this as TestTypography;
    return TestTypography(
      t < 0.5 ? fontFamily : other.fontFamily,
      TextStyle.lerp(displayXl, other.displayXl, t)!,
      TextStyle.lerp(displayLgMedium, other.displayLgMedium, t)!,
      TextStyle.lerp(displayLgRegular, other.displayLgRegular, t)!,
      TextStyle.lerp(displayMdRegular, other.displayMdRegular, t)!,
      TextStyle.lerp(displayMdMedium, other.displayMdMedium, t)!,
      TextStyle.lerp(textXlMedium, other.textXlMedium, t)!,
      TextStyle.lerp(textXlRegular, other.textXlRegular, t)!,
      TextStyle.lerp(textLgRegular, other.textLgRegular, t)!,
      TextStyle.lerp(textLgMedium, other.textLgMedium, t)!,
      TextStyle.lerp(textMdRegular, other.textMdRegular, t)!,
      TextStyle.lerp(textSmRegular, other.textSmRegular, t)!,
      TextStyle.lerp(textXsRegular, other.textXsRegular, t)!,
      TextStyle.lerp(textXsMedium, other.textXsMedium, t)!,
      TextStyle.lerp(textXxsRegular, other.textXxsRegular, t)!,
      TextStyle.lerp(textXxsMedium, other.textXxsMedium, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestTypography &&
            const DeepCollectionEquality().equals(fontFamily, other.fontFamily) &&
            const DeepCollectionEquality().equals(displayXl, other.displayXl) &&
            const DeepCollectionEquality().equals(displayLgMedium, other.displayLgMedium) &&
            const DeepCollectionEquality().equals(displayLgRegular, other.displayLgRegular) &&
            const DeepCollectionEquality().equals(displayMdRegular, other.displayMdRegular) &&
            const DeepCollectionEquality().equals(displayMdMedium, other.displayMdMedium) &&
            const DeepCollectionEquality().equals(textXlMedium, other.textXlMedium) &&
            const DeepCollectionEquality().equals(textXlRegular, other.textXlRegular) &&
            const DeepCollectionEquality().equals(textLgRegular, other.textLgRegular) &&
            const DeepCollectionEquality().equals(textLgMedium, other.textLgMedium) &&
            const DeepCollectionEquality().equals(textMdRegular, other.textMdRegular) &&
            const DeepCollectionEquality().equals(textSmRegular, other.textSmRegular) &&
            const DeepCollectionEquality().equals(textXsRegular, other.textXsRegular) &&
            const DeepCollectionEquality().equals(textXsMedium, other.textXsMedium) &&
            const DeepCollectionEquality().equals(textXxsRegular, other.textXxsRegular) &&
            const DeepCollectionEquality().equals(textXxsMedium, other.textXxsMedium));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(fontFamily),
      const DeepCollectionEquality().hash(displayXl),
      const DeepCollectionEquality().hash(displayLgMedium),
      const DeepCollectionEquality().hash(displayLgRegular),
      const DeepCollectionEquality().hash(displayMdRegular),
      const DeepCollectionEquality().hash(displayMdMedium),
      const DeepCollectionEquality().hash(textXlMedium),
      const DeepCollectionEquality().hash(textXlRegular),
      const DeepCollectionEquality().hash(textLgRegular),
      const DeepCollectionEquality().hash(textLgMedium),
      const DeepCollectionEquality().hash(textMdRegular),
      const DeepCollectionEquality().hash(textSmRegular),
      const DeepCollectionEquality().hash(textXsRegular),
      const DeepCollectionEquality().hash(textXsMedium),
      const DeepCollectionEquality().hash(textXxsRegular),
      const DeepCollectionEquality().hash(textXxsMedium),
    );
  }
}

extension TestTypographyBuildContextProps on BuildContext {
  TestTypography get testTypography => Theme.of(this).extension<TestTypography>()!;
  String get fontFamily => testTypography.fontFamily;
  TextStyle get displayXl => testTypography.displayXl;
  TextStyle get displayLgMedium => testTypography.displayLgMedium;
  TextStyle get displayLgRegular => testTypography.displayLgRegular;
  TextStyle get displayMdRegular => testTypography.displayMdRegular;
  TextStyle get displayMdMedium => testTypography.displayMdMedium;
  TextStyle get textXlMedium => testTypography.textXlMedium;
  TextStyle get textXlRegular => testTypography.textXlRegular;
  TextStyle get textLgRegular => testTypography.textLgRegular;
  TextStyle get textLgMedium => testTypography.textLgMedium;
  TextStyle get textMdRegular => testTypography.textMdRegular;
  TextStyle get textSmRegular => testTypography.textSmRegular;
  TextStyle get textXsRegular => testTypography.textXsRegular;
  TextStyle get textXsMedium => testTypography.textXsMedium;
  TextStyle get textXxsRegular => testTypography.textXxsRegular;
  TextStyle get textXxsMedium => testTypography.textXxsMedium;
}
