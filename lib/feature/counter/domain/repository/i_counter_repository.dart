import 'package:test_ai/core/domain/entity/operation_request.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';

abstract interface class ICounterRepository {
  RequestOperation<CounterEntity> getCounter();

  RequestOperation<CounterEntity> updateCounter(int value);

  RequestOperation<CounterUserEntity> fetchUser();
}
