import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';
import 'package:test_ai/network/model/counter_user_dto.dart';

abstract class CounterUserConverter {
  const CounterUserConverter();

  static CounterUserEntity convert(CounterUserDto input) {
    return CounterUserEntity(
      id: input.id,
      name: input.name,
    );
  }
}
