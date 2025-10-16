import 'package:test_ai/core/domain/entity/failure/failure.dart';

/// Неизвестная ошибка.
final class UnknownFailure extends Failure {
  const UnknownFailure({
    super.message,
    super.stackTrace,
  });
}
