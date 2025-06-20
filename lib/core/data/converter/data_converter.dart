/// {@template converter.class}
/// Base class for converters.
/// {@endtemplate}
abstract base class DataConverter<TResult, TFrom> {
  /// {@macro converter.class}
  const DataConverter();

  /// Convert TFrom to TResult.
  TResult convert(TFrom input);

  /// Convert nullable TFrom to nullable TResult.
  TResult? convertNullable(TFrom? input) => input == null ? null : convert(input);

  /// Convert TFrom list to TResult list.
  Iterable<TResult> convertMultiple(Iterable<TFrom> inputList) => inputList.map(convert);
}

/// {@template converter_to_and_from.class}
/// Base class for converters that convert to and from a type.
/// {@endtemplate}
abstract base class DataConverterToAndFrom<TResult, TFrom> {
  /// TResult from TFrom converter.
  DataConverter<TResult, TFrom> get converter;

  /// TFrom from TResult converter.
  DataConverter<TFrom, TResult> get reverseConverter;

  /// {@macro converter.class}
  const DataConverterToAndFrom();

  /// Convert TFrom to TResult.
  TResult convert(TFrom input) => converter.convert(input);

  /// Convert TResult to TFrom.
  TFrom convertReverse(TResult input) => reverseConverter.convert(input);
}
