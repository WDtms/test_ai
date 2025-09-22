import 'package:test_ai/core/data/converter/data_converter.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';
import 'package:test_ai/network/model/counter_user_dto.dart';

final class CounterUserConverter extends DataConverter<CounterUserEntity, CounterUserDto> {
  const CounterUserConverter();

  @override
  CounterUserEntity convert(CounterUserDto input) {
    return CounterUserEntity(
      id: input.id,
      name: input.name,
    );
  }
}
