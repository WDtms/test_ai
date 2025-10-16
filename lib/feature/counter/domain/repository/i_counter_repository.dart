import 'package:test_ai/core/domain/entity/result.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';

abstract interface class ICounterRepository {
  FutureResult<CounterEntity> getCounter();

  FutureResult<CounterEntity> updateCounter(int value);

  FutureResult<CounterUserEntity> fetchUser();
}
