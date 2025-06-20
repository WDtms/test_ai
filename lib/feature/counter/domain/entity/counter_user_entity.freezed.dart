// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterUserEntity {

 String get id; String get name;
/// Create a copy of CounterUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterUserEntityCopyWith<CounterUserEntity> get copyWith => _$CounterUserEntityCopyWithImpl<CounterUserEntity>(this as CounterUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CounterUserEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CounterUserEntityCopyWith<$Res>  {
  factory $CounterUserEntityCopyWith(CounterUserEntity value, $Res Function(CounterUserEntity) _then) = _$CounterUserEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CounterUserEntityCopyWithImpl<$Res>
    implements $CounterUserEntityCopyWith<$Res> {
  _$CounterUserEntityCopyWithImpl(this._self, this._then);

  final CounterUserEntity _self;
  final $Res Function(CounterUserEntity) _then;

/// Create a copy of CounterUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _CounterUserEntity implements CounterUserEntity {
  const _CounterUserEntity({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of CounterUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterUserEntityCopyWith<_CounterUserEntity> get copyWith => __$CounterUserEntityCopyWithImpl<_CounterUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CounterUserEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CounterUserEntityCopyWith<$Res> implements $CounterUserEntityCopyWith<$Res> {
  factory _$CounterUserEntityCopyWith(_CounterUserEntity value, $Res Function(_CounterUserEntity) _then) = __$CounterUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CounterUserEntityCopyWithImpl<$Res>
    implements _$CounterUserEntityCopyWith<$Res> {
  __$CounterUserEntityCopyWithImpl(this._self, this._then);

  final _CounterUserEntity _self;
  final $Res Function(_CounterUserEntity) _then;

/// Create a copy of CounterUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CounterUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
