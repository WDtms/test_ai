import 'package:test_ai/core/domain/entity/operation_request.dart';
import 'package:test_ai/core/domain/entity/result.dart';

typedef OperationWrapper<T> = Future<T> Function();

abstract base class BaseRepository {
  const BaseRepository();

  /// Выполнить API-запрос без кэширования
  RequestOperation<T> makeApiCall<T>(OperationWrapper<T> call) async {
    try {
      return ResultOk(await call());
    } on Exception catch (e) {
      return ResultFailed(e);
    }
  }
}
