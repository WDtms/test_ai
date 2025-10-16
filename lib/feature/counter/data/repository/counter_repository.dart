import 'package:test_ai/core/data/repository/base_repository.dart';
import 'package:test_ai/core/domain/entity/result.dart';
import 'package:test_ai/feature/counter/data/converter/counter_converter.dart';
import 'package:test_ai/feature/counter/data/converter/counter_user_converter.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';
import 'package:test_ai/feature/counter/domain/repository/i_counter_repository.dart';
import 'package:test_ai/network/api/counter_api.dart';

final class CounterRepository extends Repository implements ICounterRepository {
  final CounterApi _counterApi;

  const CounterRepository({
    required CounterApi counterApi,
    required super.logWriter,
  }) : _counterApi = counterApi;

  @override
  FutureResult<CounterEntity> getCounter() => handle(() async {
    await Future.delayed(Duration(seconds: 2));

    // final counterDto = await _counterApi.fetchCounter();
    //
    // return CounterConverter.convert(counterDto);

    return CounterEntity(value: 10);
  });

  @override
  FutureResult<CounterEntity> updateCounter(int value) => handle(() async {
    // final counterDto = await _counterApi.updateCounter(
    //   CounterUpdateRequestDto(
    //     value: value,
    //   ),
    // );
    //
    // return CounterConverter.convert(counterDto);

    return CounterEntity(value: value);
  });

  @override
  FutureResult<CounterUserEntity> fetchUser() => handle(() async {
    // final counterUserDto = await _counterApi.fetchUser();
    //
    // return CounterUserConverter.convert(counterUserDto);

    return CounterUserEntity(
      id: 'id',
      name: 'Aizek',
    );
  });
}
