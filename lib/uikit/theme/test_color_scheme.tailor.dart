// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'test_color_scheme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$TestColorSchemeTailorMixin on ThemeExtension<TestColorScheme> {
  Brightness get brightness;
  Color get white;
  Color get black;
  Color get gray950;
  Color get gray900;
  Color get gray800;
  Color get gray700;
  Color get gray600;
  Color get gray500;
  Color get gray400;
  Color get gray300;
  Color get gray200;
  Color get gray100;
  Color get gray50;
  Color get error950;
  Color get error900;
  Color get error800;
  Color get error700;
  Color get error600;
  Color get error500;
  Color get error400;
  Color get error300;
  Color get error200;
  Color get error100;
  Color get error50;
  Color get positive;
  Color get warning;

  @override
  TestColorScheme copyWith({
    Brightness? brightness,
    Color? white,
    Color? black,
    Color? gray950,
    Color? gray900,
    Color? gray800,
    Color? gray700,
    Color? gray600,
    Color? gray500,
    Color? gray400,
    Color? gray300,
    Color? gray200,
    Color? gray100,
    Color? gray50,
    Color? error950,
    Color? error900,
    Color? error800,
    Color? error700,
    Color? error600,
    Color? error500,
    Color? error400,
    Color? error300,
    Color? error200,
    Color? error100,
    Color? error50,
    Color? positive,
    Color? warning,
  }) {
    return TestColorScheme(
      brightness: brightness ?? this.brightness,
      white: white ?? this.white,
      black: black ?? this.black,
      gray950: gray950 ?? this.gray950,
      gray900: gray900 ?? this.gray900,
      gray800: gray800 ?? this.gray800,
      gray700: gray700 ?? this.gray700,
      gray600: gray600 ?? this.gray600,
      gray500: gray500 ?? this.gray500,
      gray400: gray400 ?? this.gray400,
      gray300: gray300 ?? this.gray300,
      gray200: gray200 ?? this.gray200,
      gray100: gray100 ?? this.gray100,
      gray50: gray50 ?? this.gray50,
      error950: error950 ?? this.error950,
      error900: error900 ?? this.error900,
      error800: error800 ?? this.error800,
      error700: error700 ?? this.error700,
      error600: error600 ?? this.error600,
      error500: error500 ?? this.error500,
      error400: error400 ?? this.error400,
      error300: error300 ?? this.error300,
      error200: error200 ?? this.error200,
      error100: error100 ?? this.error100,
      error50: error50 ?? this.error50,
      positive: positive ?? this.positive,
      warning: warning ?? this.warning,
    );
  }

  @override
  TestColorScheme lerp(covariant ThemeExtension<TestColorScheme>? other, double t) {
    if (other is! TestColorScheme) return this as TestColorScheme;
    return TestColorScheme(
      brightness: t < 0.5 ? brightness : other.brightness,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      gray950: Color.lerp(gray950, other.gray950, t)!,
      gray900: Color.lerp(gray900, other.gray900, t)!,
      gray800: Color.lerp(gray800, other.gray800, t)!,
      gray700: Color.lerp(gray700, other.gray700, t)!,
      gray600: Color.lerp(gray600, other.gray600, t)!,
      gray500: Color.lerp(gray500, other.gray500, t)!,
      gray400: Color.lerp(gray400, other.gray400, t)!,
      gray300: Color.lerp(gray300, other.gray300, t)!,
      gray200: Color.lerp(gray200, other.gray200, t)!,
      gray100: Color.lerp(gray100, other.gray100, t)!,
      gray50: Color.lerp(gray50, other.gray50, t)!,
      error950: Color.lerp(error950, other.error950, t)!,
      error900: Color.lerp(error900, other.error900, t)!,
      error800: Color.lerp(error800, other.error800, t)!,
      error700: Color.lerp(error700, other.error700, t)!,
      error600: Color.lerp(error600, other.error600, t)!,
      error500: Color.lerp(error500, other.error500, t)!,
      error400: Color.lerp(error400, other.error400, t)!,
      error300: Color.lerp(error300, other.error300, t)!,
      error200: Color.lerp(error200, other.error200, t)!,
      error100: Color.lerp(error100, other.error100, t)!,
      error50: Color.lerp(error50, other.error50, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestColorScheme &&
            const DeepCollectionEquality().equals(brightness, other.brightness) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(gray950, other.gray950) &&
            const DeepCollectionEquality().equals(gray900, other.gray900) &&
            const DeepCollectionEquality().equals(gray800, other.gray800) &&
            const DeepCollectionEquality().equals(gray700, other.gray700) &&
            const DeepCollectionEquality().equals(gray600, other.gray600) &&
            const DeepCollectionEquality().equals(gray500, other.gray500) &&
            const DeepCollectionEquality().equals(gray400, other.gray400) &&
            const DeepCollectionEquality().equals(gray300, other.gray300) &&
            const DeepCollectionEquality().equals(gray200, other.gray200) &&
            const DeepCollectionEquality().equals(gray100, other.gray100) &&
            const DeepCollectionEquality().equals(gray50, other.gray50) &&
            const DeepCollectionEquality().equals(error950, other.error950) &&
            const DeepCollectionEquality().equals(error900, other.error900) &&
            const DeepCollectionEquality().equals(error800, other.error800) &&
            const DeepCollectionEquality().equals(error700, other.error700) &&
            const DeepCollectionEquality().equals(error600, other.error600) &&
            const DeepCollectionEquality().equals(error500, other.error500) &&
            const DeepCollectionEquality().equals(error400, other.error400) &&
            const DeepCollectionEquality().equals(error300, other.error300) &&
            const DeepCollectionEquality().equals(error200, other.error200) &&
            const DeepCollectionEquality().equals(error100, other.error100) &&
            const DeepCollectionEquality().equals(error50, other.error50) &&
            const DeepCollectionEquality().equals(positive, other.positive) &&
            const DeepCollectionEquality().equals(warning, other.warning));
  }

  @override
  int get hashCode {
    return Object.hashAll([
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(white),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(gray950),
      const DeepCollectionEquality().hash(gray900),
      const DeepCollectionEquality().hash(gray800),
      const DeepCollectionEquality().hash(gray700),
      const DeepCollectionEquality().hash(gray600),
      const DeepCollectionEquality().hash(gray500),
      const DeepCollectionEquality().hash(gray400),
      const DeepCollectionEquality().hash(gray300),
      const DeepCollectionEquality().hash(gray200),
      const DeepCollectionEquality().hash(gray100),
      const DeepCollectionEquality().hash(gray50),
      const DeepCollectionEquality().hash(error950),
      const DeepCollectionEquality().hash(error900),
      const DeepCollectionEquality().hash(error800),
      const DeepCollectionEquality().hash(error700),
      const DeepCollectionEquality().hash(error600),
      const DeepCollectionEquality().hash(error500),
      const DeepCollectionEquality().hash(error400),
      const DeepCollectionEquality().hash(error300),
      const DeepCollectionEquality().hash(error200),
      const DeepCollectionEquality().hash(error100),
      const DeepCollectionEquality().hash(error50),
      const DeepCollectionEquality().hash(positive),
      const DeepCollectionEquality().hash(warning),
    ]);
  }
}

extension TestColorSchemeBuildContextProps on BuildContext {
  TestColorScheme get testColorScheme => Theme.of(this).extension<TestColorScheme>()!;
  Brightness get brightness => testColorScheme.brightness;
  Color get white => testColorScheme.white;
  Color get black => testColorScheme.black;
  Color get gray950 => testColorScheme.gray950;
  Color get gray900 => testColorScheme.gray900;
  Color get gray800 => testColorScheme.gray800;
  Color get gray700 => testColorScheme.gray700;
  Color get gray600 => testColorScheme.gray600;
  Color get gray500 => testColorScheme.gray500;
  Color get gray400 => testColorScheme.gray400;
  Color get gray300 => testColorScheme.gray300;
  Color get gray200 => testColorScheme.gray200;
  Color get gray100 => testColorScheme.gray100;
  Color get gray50 => testColorScheme.gray50;
  Color get error950 => testColorScheme.error950;
  Color get error900 => testColorScheme.error900;
  Color get error800 => testColorScheme.error800;
  Color get error700 => testColorScheme.error700;
  Color get error600 => testColorScheme.error600;
  Color get error500 => testColorScheme.error500;
  Color get error400 => testColorScheme.error400;
  Color get error300 => testColorScheme.error300;
  Color get error200 => testColorScheme.error200;
  Color get error100 => testColorScheme.error100;
  Color get error50 => testColorScheme.error50;
  Color get positive => testColorScheme.positive;
  Color get warning => testColorScheme.warning;
}
