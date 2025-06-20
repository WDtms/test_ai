import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_user_entity.freezed.dart';

@freezed
abstract class CounterUserEntity with _$CounterUserEntity {
  const factory CounterUserEntity({
    required String id,
    required String name,
  }) = _CounterUserEntity;
}
