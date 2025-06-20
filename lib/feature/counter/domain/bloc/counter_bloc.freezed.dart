// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterEvent()';
}


}

/// @nodoc
class $CounterEventCopyWith<$Res>  {
$CounterEventCopyWith(CounterEvent _, $Res Function(CounterEvent) __);
}


/// @nodoc


class _CounterInitEvent implements CounterEvent {
  const _CounterInitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterInitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterEvent.init()';
}


}




/// @nodoc


class _CounterIncrementEvent implements CounterEvent {
  const _CounterIncrementEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterIncrementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterEvent.increment()';
}


}




/// @nodoc


class _CounterDecrementEvent implements CounterEvent {
  const _CounterDecrementEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterDecrementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterEvent.decrement()';
}


}




/// @nodoc
mixin _$CounterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState()';
}


}

/// @nodoc
class $CounterStateCopyWith<$Res>  {
$CounterStateCopyWith(CounterState _, $Res Function(CounterState) __);
}


/// @nodoc


class _CounterInitial implements CounterState {
  const _CounterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState.initial()';
}


}




/// @nodoc


class _CounterLoading implements CounterState {
  const _CounterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState.loading()';
}


}




/// @nodoc


class _CounterIdle implements CounterState {
  const _CounterIdle({required this.curValue, required this.user});
  

 final  int curValue;
 final  CounterUserEntity user;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterIdleCopyWith<_CounterIdle> get copyWith => __$CounterIdleCopyWithImpl<_CounterIdle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterIdle&&(identical(other.curValue, curValue) || other.curValue == curValue)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,curValue,user);

@override
String toString() {
  return 'CounterState.idle(curValue: $curValue, user: $user)';
}


}

/// @nodoc
abstract mixin class _$CounterIdleCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CounterIdleCopyWith(_CounterIdle value, $Res Function(_CounterIdle) _then) = __$CounterIdleCopyWithImpl;
@useResult
$Res call({
 int curValue, CounterUserEntity user
});


$CounterUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$CounterIdleCopyWithImpl<$Res>
    implements _$CounterIdleCopyWith<$Res> {
  __$CounterIdleCopyWithImpl(this._self, this._then);

  final _CounterIdle _self;
  final $Res Function(_CounterIdle) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? curValue = null,Object? user = null,}) {
  return _then(_CounterIdle(
curValue: null == curValue ? _self.curValue : curValue // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CounterUserEntity,
  ));
}

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterUserEntityCopyWith<$Res> get user {
  
  return $CounterUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _CounterUpdating implements CounterState {
  const _CounterUpdating({required this.curValue, required this.user});
  

 final  int curValue;
 final  CounterUserEntity user;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterUpdatingCopyWith<_CounterUpdating> get copyWith => __$CounterUpdatingCopyWithImpl<_CounterUpdating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterUpdating&&(identical(other.curValue, curValue) || other.curValue == curValue)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,curValue,user);

@override
String toString() {
  return 'CounterState.updating(curValue: $curValue, user: $user)';
}


}

/// @nodoc
abstract mixin class _$CounterUpdatingCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CounterUpdatingCopyWith(_CounterUpdating value, $Res Function(_CounterUpdating) _then) = __$CounterUpdatingCopyWithImpl;
@useResult
$Res call({
 int curValue, CounterUserEntity user
});


$CounterUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$CounterUpdatingCopyWithImpl<$Res>
    implements _$CounterUpdatingCopyWith<$Res> {
  __$CounterUpdatingCopyWithImpl(this._self, this._then);

  final _CounterUpdating _self;
  final $Res Function(_CounterUpdating) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? curValue = null,Object? user = null,}) {
  return _then(_CounterUpdating(
curValue: null == curValue ? _self.curValue : curValue // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CounterUserEntity,
  ));
}

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterUserEntityCopyWith<$Res> get user {
  
  return $CounterUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _CounterUpdateFailed implements CounterState {
  const _CounterUpdateFailed({required this.curValue, required this.reason, required this.user});
  

 final  int curValue;
 final  CounterUpdateFailedReason reason;
 final  CounterUserEntity user;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterUpdateFailedCopyWith<_CounterUpdateFailed> get copyWith => __$CounterUpdateFailedCopyWithImpl<_CounterUpdateFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterUpdateFailed&&(identical(other.curValue, curValue) || other.curValue == curValue)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,curValue,reason,user);

@override
String toString() {
  return 'CounterState.updateFailed(curValue: $curValue, reason: $reason, user: $user)';
}


}

/// @nodoc
abstract mixin class _$CounterUpdateFailedCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CounterUpdateFailedCopyWith(_CounterUpdateFailed value, $Res Function(_CounterUpdateFailed) _then) = __$CounterUpdateFailedCopyWithImpl;
@useResult
$Res call({
 int curValue, CounterUpdateFailedReason reason, CounterUserEntity user
});


$CounterUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$CounterUpdateFailedCopyWithImpl<$Res>
    implements _$CounterUpdateFailedCopyWith<$Res> {
  __$CounterUpdateFailedCopyWithImpl(this._self, this._then);

  final _CounterUpdateFailed _self;
  final $Res Function(_CounterUpdateFailed) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? curValue = null,Object? reason = null,Object? user = null,}) {
  return _then(_CounterUpdateFailed(
curValue: null == curValue ? _self.curValue : curValue // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CounterUpdateFailedReason,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CounterUserEntity,
  ));
}

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CounterUserEntityCopyWith<$Res> get user {
  
  return $CounterUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _CounterFailure implements CounterState {
  const _CounterFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CounterState.failure()';
}


}




// dart format on
