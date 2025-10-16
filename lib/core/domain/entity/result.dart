import 'failure/failure.dart';

typedef FutureResult<T> = Future<Result<T>>;

typedef StreamResult<T> = Stream<Result<T>>;

/// {@template result.class}
/// Result of a function execution.
///
/// [Result.ok] - named constructor for a successful Result - [Result].
///
/// [Result.failed] - named constructor for Result with error - [ResultFailed].
/// {@endtemplate}
sealed class Result<TData> {
  /// {@macro result.class}
  const Result();

  /// {@macro result.class}
  const factory Result.ok(TData data) = ResultOk;

  /// {@macro result.class}
  const factory Result.failed(Failure failure, StackTrace stackTrace) = ResultFailed;

  /// Returns `true` if the result is [ResultOk].
  bool get isOk => this is ResultOk<TData>;

  /// Returns `true` if the result is [ResultFailed].
  bool get isFailed => this is ResultFailed<TData>;

  /// If the result is [ResultOk] unwraps it, otherwise returns null.
  TData? get dataOrNull {
    return switch (this) {
      ResultOk<TData>(:final data) => data,
      ResultFailed<TData>() => null,
    };
  }

  /// Convert [ResultOk].
  Result<R> mapOk<R>(R Function(TData value) mapper) {
    return switch (this) {
      ResultOk<TData>(:final data) => Result.ok(mapper(data)),
      ResultFailed<TData>(:final failure, :final stackTrace) => Result.failed(failure, stackTrace),
    };
  }

  /// Unwraps result as [TData].
  ///
  /// Rethrows an exception if the result is [ResultFailed].
  ///
  /// Designed for cases when you are using repository calls outside of the business logic
  /// and it is ok to rethrow the exception and catch it in the root level handler.
  TData unwrap() {
    return switch (this) {
      ResultOk<TData>(:final data) => data,
      ResultFailed<TData>(:final failure, :final stackTrace) => Error.throwWithStackTrace(
        failure,
        stackTrace,
      ),
    };
  }

  /// If the result is [ResultOk] unwraps it, otherwise returns [defaultValue].
  TData unwrapOr(TData defaultValue) {
    return switch (this) {
      ResultOk<TData>(:final data) => data,
      ResultFailed<TData>() => defaultValue,
    };
  }
}

/// {@macro result.class}
final class ResultOk<TData> extends Result<TData> {
  /// Successful Result data.
  final TData data;

  /// {@macro result.class}
  const ResultOk(this.data);
}

/// {@macro result.class}
final class ResultFailed<TData> extends Result<TData> {
  /// Error.
  final Failure failure;

  /// Stack Trace.
  final StackTrace stackTrace;

  /// {@macro result.class}
  const ResultFailed(this.failure, this.stackTrace);
}
