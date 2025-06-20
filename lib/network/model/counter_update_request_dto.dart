import 'package:json_annotation/json_annotation.dart';

part 'counter_update_request_dto.g.dart';

@JsonSerializable()
class CounterUpdateRequestDto {
  final int value;

  const CounterUpdateRequestDto({required this.value});

  factory CounterUpdateRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CounterUpdateRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CounterUpdateRequestDtoToJson(this);
}
