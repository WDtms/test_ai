import 'package:test_ai/core/data/converter/data_converter.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/network/model/counter_dto.dart';

final class CounterConverter extends DataConverter<CounterEntity, CounterDto> {
  const CounterConverter();

  @override
  CounterEntity convert(CounterDto input) {
    return CounterEntity(value: input.value);
  }
}
