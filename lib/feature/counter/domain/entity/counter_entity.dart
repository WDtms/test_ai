import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_entity.freezed.dart';

@freezed
abstract class CounterEntity with _$CounterEntity {
  const factory CounterEntity({required int value}) = _CounterEntity;
}
