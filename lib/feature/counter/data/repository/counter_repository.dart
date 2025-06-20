import 'package:test_ai/core/data/repository/base_repository.dart';
import 'package:test_ai/core/domain/entity/operation_request.dart';
import 'package:test_ai/feature/counter/data/converter/counter_converter.dart';
import 'package:test_ai/feature/counter/data/converter/counter_user_converter.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';
import 'package:test_ai/feature/counter/domain/repository/i_counter_repository.dart';
import 'package:test_ai/network/api/counter_api.dart';
import 'package:test_ai/network/model/counter_update_request_dto.dart';

final class CounterRepository extends BaseRepository implements ICounterRepository {
  final CounterApi _counterApi;
  final CounterConverter _counterConverter;
  final CounterUserConverter _counterUserConverter;

  const CounterRepository({
    required CounterApi counterApi,
    required CounterConverter counterConverter,
    required CounterUserConverter counterUserConverter,
  }) : _counterApi = counterApi,
       _counterConverter = counterConverter,
       _counterUserConverter = counterUserConverter;

  @override
  RequestOperation<CounterEntity> getCounter() => makeApiCall(() async {
    final counterDto = await _counterApi.fetchCounter();

    return _counterConverter.convert(counterDto);
  });

  @override
  RequestOperation<CounterEntity> updateCounter(int value) => makeApiCall(() async {
    final counterDto = await _counterApi.updateCounter(
      CounterUpdateRequestDto(
        value: value,
      ),
    );

    return _counterConverter.convert(counterDto);
  });

  @override
  RequestOperation<CounterUserEntity> fetchUser() => makeApiCall(() async {
    final counterUserDto = await _counterApi.fetchUser();

    return _counterUserConverter.convert(counterUserDto);
  });
}
