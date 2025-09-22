import 'package:test_ai/core/domain/entity/result.dart';

/// Request operation in Base Repository.
typedef RequestOperation<T> = Future<Result<T, Exception>>;
