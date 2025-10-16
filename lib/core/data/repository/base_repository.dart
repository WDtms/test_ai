import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:test_ai/core/domain/entity/failure/failure.dart';
import 'package:test_ai/core/domain/entity/failure/network_failure.dart';
import 'package:test_ai/core/domain/entity/failure/unknown_failure.dart';
import 'package:test_ai/core/domain/entity/result.dart';

typedef CustomDioErrorHandler<T> = FutureResult<T> Function(DioException error, StackTrace trace);

typedef CustomCommonErrorHandler<T> = FutureResult<T> Function(Object exception, StackTrace trace);

typedef OnFinally = Function();

/// {@template base_repository.class}
/// Базовый класс для всех репозиториев в приложении.
/// {@endtemplate}
abstract base class Repository {
  /// {@macro i_log_writer.class}
  final LogWriter logWriter;

  /// {@macro base_repository.class}
  const Repository({required this.logWriter});

  /// Обёртка для стандартной обработки ошибок.
  @protected
  FutureResult<T> handle<T>(
      AsyncValueGetter<T> call, {
        CustomCommonErrorHandler<T>? customCommonErrorHandling,
        CustomDioErrorHandler<T>? customDioErrorHandling,
        OnFinally? onFinally,
      }) async {
    try {
      return Result.ok(await call());
    } on DioException catch (e, s) {
      final customHandledResult = await customDioErrorHandling?.call(e, s);

      switch (customHandledResult) {
        case null:
          final error = unwrapDioException(e, trace: s);

          logWriter.e(error, s);

          return Result.failed(error, s);
        case ResultOk<T>():
          return customHandledResult;
        case ResultFailed<T>():
          logWriter.e(customHandledResult.failure, customHandledResult.stackTrace);

          return customHandledResult;
      }
    } on Failure catch (e, s) {
      return Result.failed(e, s);
    } on Object catch (e, s) {
      final customHandledResult = await customCommonErrorHandling?.call(e, s);

      switch (customHandledResult) {
        case null:
          final error = UnknownFailure(message: e.toString(), stackTrace: s);

          logWriter.e(error, s);

          return Result.failed(error, s);
        case ResultOk<T>():
          return customHandledResult;
        case ResultFailed<T>():
          logWriter.e(customHandledResult.failure, customHandledResult.stackTrace);

          return customHandledResult;
      }
    } finally {
      onFinally?.call();
    }
  }

  /// Маппинг ошибки API.
  @protected
  NetworkFailure unwrapDioException(DioException exception, {required StackTrace trace}) {
    return switch (exception.type) {
      DioExceptionType.connectionTimeout => const ServerNotRespondingFailure(),
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.cancel ||
      DioExceptionType.connectionTimeout ||
      DioExceptionType.connectionError => const NoNetworkFailure(),
      _ => UnknownNetworkFailure(exception),
    };
  }
}

