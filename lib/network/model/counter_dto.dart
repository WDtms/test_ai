import 'package:json_annotation/json_annotation.dart';

part 'counter_dto.g.dart';

@JsonSerializable()
class CounterDto {
  final int value;

  const CounterDto({required this.value});

  factory CounterDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CounterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CounterDtoToJson(this);
}
