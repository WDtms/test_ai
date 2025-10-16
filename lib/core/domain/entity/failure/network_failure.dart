import 'package:test_ai/core/domain/entity/failure/failure.dart';

sealed class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message,
    super.parentException,
    super.stackTrace,
  });
}

/// Ошибка, возникающая при отсутствии интернет-соединения.
final class NoNetworkFailure extends NetworkFailure {
  const NoNetworkFailure() : super(message: 'No network connection');
}

final class ServerNotRespondingFailure extends NetworkFailure {
  const ServerNotRespondingFailure() : super(message: 'Server not responding');
}

final class UnknownNetworkFailure extends NetworkFailure {
  const UnknownNetworkFailure(Exception exception) : super(parentException: exception);
}
