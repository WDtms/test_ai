import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/network/model/counter_dto.dart';

abstract class CounterConverter {
  const CounterConverter();

  static CounterEntity convert(CounterDto input) {
    return CounterEntity(value: input.value);
  }
}
