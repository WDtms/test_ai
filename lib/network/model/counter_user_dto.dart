import 'package:json_annotation/json_annotation.dart';

part 'counter_user_dto.g.dart';

@JsonSerializable()
class CounterUserDto {
  final String id;
  final String name;

  const CounterUserDto({required this.id, required this.name});

  factory CounterUserDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CounterUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CounterUserDtoToJson(this);
}
