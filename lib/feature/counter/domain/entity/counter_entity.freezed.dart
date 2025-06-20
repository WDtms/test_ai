// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterEntity {

 int get value;
/// Create a copy of CounterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterEntityCopyWith<CounterEntity> get copyWith => _$CounterEntityCopyWithImpl<CounterEntity>(this as CounterEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterEntity&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CounterEntity(value: $value)';
}


}

/// @nodoc
abstract mixin class $CounterEntityCopyWith<$Res>  {
  factory $CounterEntityCopyWith(CounterEntity value, $Res Function(CounterEntity) _then) = _$CounterEntityCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$CounterEntityCopyWithImpl<$Res>
    implements $CounterEntityCopyWith<$Res> {
  _$CounterEntityCopyWithImpl(this._self, this._then);

  final CounterEntity _self;
  final $Res Function(CounterEntity) _then;

/// Create a copy of CounterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _CounterEntity implements CounterEntity {
  const _CounterEntity({required this.value});
  

@override final  int value;

/// Create a copy of CounterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterEntityCopyWith<_CounterEntity> get copyWith => __$CounterEntityCopyWithImpl<_CounterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterEntity&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CounterEntity(value: $value)';
}


}

/// @nodoc
abstract mixin class _$CounterEntityCopyWith<$Res> implements $CounterEntityCopyWith<$Res> {
  factory _$CounterEntityCopyWith(_CounterEntity value, $Res Function(_CounterEntity) _then) = __$CounterEntityCopyWithImpl;
@override @useResult
$Res call({
 int value
});




}
/// @nodoc
class __$CounterEntityCopyWithImpl<$Res>
    implements _$CounterEntityCopyWith<$Res> {
  __$CounterEntityCopyWithImpl(this._self, this._then);

  final _CounterEntity _self;
  final $Res Function(_CounterEntity) _then;

/// Create a copy of CounterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_CounterEntity(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
