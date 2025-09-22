// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterInitEvent value) init,
    required TResult Function(_CounterIncrementEvent value) increment,
    required TResult Function(_CounterDecrementEvent value) decrement,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterInitEvent value)? init,
    TResult? Function(_CounterIncrementEvent value)? increment,
    TResult? Function(_CounterDecrementEvent value)? decrement,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterInitEvent value)? init,
    TResult Function(_CounterIncrementEvent value)? increment,
    TResult Function(_CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent> implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CounterInitEventImplCopyWith<$Res> {
  factory _$$CounterInitEventImplCopyWith(_$CounterInitEventImpl value, $Res Function(_$CounterInitEventImpl) then) =
      __$$CounterInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CounterInitEventImplCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res, _$CounterInitEventImpl>
    implements _$$CounterInitEventImplCopyWith<$Res> {
  __$$CounterInitEventImplCopyWithImpl(_$CounterInitEventImpl _value, $Res Function(_$CounterInitEventImpl) _then)
    : super(_value, _then);

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CounterInitEventImpl implements _CounterInitEvent {
  const _$CounterInitEventImpl();

  @override
  String toString() {
    return 'CounterEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CounterInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterInitEvent value) init,
    required TResult Function(_CounterIncrementEvent value) increment,
    required TResult Function(_CounterDecrementEvent value) decrement,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterInitEvent value)? init,
    TResult? Function(_CounterIncrementEvent value)? increment,
    TResult? Function(_CounterDecrementEvent value)? decrement,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterInitEvent value)? init,
    TResult Function(_CounterIncrementEvent value)? increment,
    TResult Function(_CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _CounterInitEvent implements CounterEvent {
  const factory _CounterInitEvent() = _$CounterInitEventImpl;
}

/// @nodoc
abstract class _$$CounterIncrementEventImplCopyWith<$Res> {
  factory _$$CounterIncrementEventImplCopyWith(
    _$CounterIncrementEventImpl value,
    $Res Function(_$CounterIncrementEventImpl) then,
  ) = __$$CounterIncrementEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CounterIncrementEventImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$CounterIncrementEventImpl>
    implements _$$CounterIncrementEventImplCopyWith<$Res> {
  __$$CounterIncrementEventImplCopyWithImpl(
    _$CounterIncrementEventImpl _value,
    $Res Function(_$CounterIncrementEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CounterIncrementEventImpl implements _CounterIncrementEvent {
  const _$CounterIncrementEventImpl();

  @override
  String toString() {
    return 'CounterEvent.increment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CounterIncrementEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return increment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return increment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterInitEvent value) init,
    required TResult Function(_CounterIncrementEvent value) increment,
    required TResult Function(_CounterDecrementEvent value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterInitEvent value)? init,
    TResult? Function(_CounterIncrementEvent value)? increment,
    TResult? Function(_CounterDecrementEvent value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterInitEvent value)? init,
    TResult Function(_CounterIncrementEvent value)? increment,
    TResult Function(_CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _CounterIncrementEvent implements CounterEvent {
  const factory _CounterIncrementEvent() = _$CounterIncrementEventImpl;
}

/// @nodoc
abstract class _$$CounterDecrementEventImplCopyWith<$Res> {
  factory _$$CounterDecrementEventImplCopyWith(
    _$CounterDecrementEventImpl value,
    $Res Function(_$CounterDecrementEventImpl) then,
  ) = __$$CounterDecrementEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CounterDecrementEventImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$CounterDecrementEventImpl>
    implements _$$CounterDecrementEventImplCopyWith<$Res> {
  __$$CounterDecrementEventImplCopyWithImpl(
    _$CounterDecrementEventImpl _value,
    $Res Function(_$CounterDecrementEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CounterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CounterDecrementEventImpl implements _CounterDecrementEvent {
  const _$CounterDecrementEventImpl();

  @override
  String toString() {
    return 'CounterEvent.decrement()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CounterDecrementEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() increment,
    required TResult Function() decrement,
  }) {
    return decrement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? increment,
    TResult? Function()? decrement,
  }) {
    return decrement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? increment,
    TResult Function()? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterInitEvent value) init,
    required TResult Function(_CounterIncrementEvent value) increment,
    required TResult Function(_CounterDecrementEvent value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterInitEvent value)? init,
    TResult? Function(_CounterIncrementEvent value)? increment,
    TResult? Function(_CounterDecrementEvent value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterInitEvent value)? init,
    TResult Function(_CounterIncrementEvent value)? increment,
    TResult Function(_CounterDecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _CounterDecrementEvent implements CounterEvent {
  const factory _CounterDecrementEvent() = _$CounterDecrementEventImpl;
}

/// @nodoc
mixin _$CounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CounterInitialImplCopyWith<$Res> {
  factory _$$CounterInitialImplCopyWith(_$CounterInitialImpl value, $Res Function(_$CounterInitialImpl) then) =
      __$$CounterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CounterInitialImplCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res, _$CounterInitialImpl>
    implements _$$CounterInitialImplCopyWith<$Res> {
  __$$CounterInitialImplCopyWithImpl(_$CounterInitialImpl _value, $Res Function(_$CounterInitialImpl) _then)
    : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CounterInitialImpl extends CounterInitial {
  const _$CounterInitialImpl() : super._();

  @override
  String toString() {
    return 'CounterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CounterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CounterInitial extends CounterState {
  const factory CounterInitial() = _$CounterInitialImpl;
  const CounterInitial._() : super._();
}

/// @nodoc
abstract class _$$CounterLoadingImplCopyWith<$Res> {
  factory _$$CounterLoadingImplCopyWith(_$CounterLoadingImpl value, $Res Function(_$CounterLoadingImpl) then) =
      __$$CounterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CounterLoadingImplCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res, _$CounterLoadingImpl>
    implements _$$CounterLoadingImplCopyWith<$Res> {
  __$$CounterLoadingImplCopyWithImpl(_$CounterLoadingImpl _value, $Res Function(_$CounterLoadingImpl) _then)
    : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CounterLoadingImpl extends CounterLoading {
  const _$CounterLoadingImpl() : super._();

  @override
  String toString() {
    return 'CounterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CounterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CounterLoading extends CounterState {
  const factory CounterLoading() = _$CounterLoadingImpl;
  const CounterLoading._() : super._();
}

/// @nodoc
abstract class _$$CounterIdleImplCopyWith<$Res> {
  factory _$$CounterIdleImplCopyWith(_$CounterIdleImpl value, $Res Function(_$CounterIdleImpl) then) =
      __$$CounterIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int curValue, CounterUserEntity user});

  $CounterUserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$CounterIdleImplCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res, _$CounterIdleImpl>
    implements _$$CounterIdleImplCopyWith<$Res> {
  __$$CounterIdleImplCopyWithImpl(_$CounterIdleImpl _value, $Res Function(_$CounterIdleImpl) _then)
    : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curValue = null,
    Object? user = null,
  }) {
    return _then(
      _$CounterIdleImpl(
        curValue: null == curValue
            ? _value.curValue
            : curValue // ignore: cast_nullable_to_non_nullable
                  as int,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as CounterUserEntity,
      ),
    );
  }

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CounterUserEntityCopyWith<$Res> get user {
    return $CounterUserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CounterIdleImpl extends CounterIdle {
  const _$CounterIdleImpl({required this.curValue, required this.user}) : super._();

  @override
  final int curValue;
  @override
  final CounterUserEntity user;

  @override
  String toString() {
    return 'CounterState.idle(curValue: $curValue, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterIdleImpl &&
            (identical(other.curValue, curValue) || other.curValue == curValue) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, curValue, user);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterIdleImplCopyWith<_$CounterIdleImpl> get copyWith =>
      __$$CounterIdleImplCopyWithImpl<_$CounterIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) {
    return idle(curValue, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) {
    return idle?.call(curValue, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(curValue, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CounterIdle extends CounterState implements CounterData {
  const factory CounterIdle({required final int curValue, required final CounterUserEntity user}) = _$CounterIdleImpl;
  const CounterIdle._() : super._();

  int get curValue;
  CounterUserEntity get user;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CounterIdleImplCopyWith<_$CounterIdleImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CounterUpdatingImplCopyWith<$Res> {
  factory _$$CounterUpdatingImplCopyWith(_$CounterUpdatingImpl value, $Res Function(_$CounterUpdatingImpl) then) =
      __$$CounterUpdatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int curValue, CounterUserEntity user});

  $CounterUserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$CounterUpdatingImplCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res, _$CounterUpdatingImpl>
    implements _$$CounterUpdatingImplCopyWith<$Res> {
  __$$CounterUpdatingImplCopyWithImpl(_$CounterUpdatingImpl _value, $Res Function(_$CounterUpdatingImpl) _then)
    : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curValue = null,
    Object? user = null,
  }) {
    return _then(
      _$CounterUpdatingImpl(
        curValue: null == curValue
            ? _value.curValue
            : curValue // ignore: cast_nullable_to_non_nullable
                  as int,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as CounterUserEntity,
      ),
    );
  }

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CounterUserEntityCopyWith<$Res> get user {
    return $CounterUserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CounterUpdatingImpl extends CounterUpdating {
  const _$CounterUpdatingImpl({required this.curValue, required this.user}) : super._();

  @override
  final int curValue;
  @override
  final CounterUserEntity user;

  @override
  String toString() {
    return 'CounterState.updating(curValue: $curValue, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterUpdatingImpl &&
            (identical(other.curValue, curValue) || other.curValue == curValue) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, curValue, user);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterUpdatingImplCopyWith<_$CounterUpdatingImpl> get copyWith =>
      __$$CounterUpdatingImplCopyWithImpl<_$CounterUpdatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) {
    return updating(curValue, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) {
    return updating?.call(curValue, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(curValue, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class CounterUpdating extends CounterState implements CounterData {
  const factory CounterUpdating({required final int curValue, required final CounterUserEntity user}) =
      _$CounterUpdatingImpl;
  const CounterUpdating._() : super._();

  int get curValue;
  CounterUserEntity get user;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CounterUpdatingImplCopyWith<_$CounterUpdatingImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CounterUpdateFailedImplCopyWith<$Res> {
  factory _$$CounterUpdateFailedImplCopyWith(
    _$CounterUpdateFailedImpl value,
    $Res Function(_$CounterUpdateFailedImpl) then,
  ) = __$$CounterUpdateFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int curValue, CounterUpdateFailedReason reason, CounterUserEntity user});

  $CounterUserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$CounterUpdateFailedImplCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res, _$CounterUpdateFailedImpl>
    implements _$$CounterUpdateFailedImplCopyWith<$Res> {
  __$$CounterUpdateFailedImplCopyWithImpl(
    _$CounterUpdateFailedImpl _value,
    $Res Function(_$CounterUpdateFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curValue = null,
    Object? reason = null,
    Object? user = null,
  }) {
    return _then(
      _$CounterUpdateFailedImpl(
        curValue: null == curValue
            ? _value.curValue
            : curValue // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as CounterUpdateFailedReason,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as CounterUserEntity,
      ),
    );
  }

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CounterUserEntityCopyWith<$Res> get user {
    return $CounterUserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CounterUpdateFailedImpl extends CounterUpdateFailed {
  const _$CounterUpdateFailedImpl({required this.curValue, required this.reason, required this.user}) : super._();

  @override
  final int curValue;
  @override
  final CounterUpdateFailedReason reason;
  @override
  final CounterUserEntity user;

  @override
  String toString() {
    return 'CounterState.updateFailed(curValue: $curValue, reason: $reason, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterUpdateFailedImpl &&
            (identical(other.curValue, curValue) || other.curValue == curValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, curValue, reason, user);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterUpdateFailedImplCopyWith<_$CounterUpdateFailedImpl> get copyWith =>
      __$$CounterUpdateFailedImplCopyWithImpl<_$CounterUpdateFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) {
    return updateFailed(curValue, reason, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) {
    return updateFailed?.call(curValue, reason, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(curValue, reason, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class CounterUpdateFailed extends CounterState implements CounterData {
  const factory CounterUpdateFailed({
    required final int curValue,
    required final CounterUpdateFailedReason reason,
    required final CounterUserEntity user,
  }) = _$CounterUpdateFailedImpl;
  const CounterUpdateFailed._() : super._();

  int get curValue;
  CounterUpdateFailedReason get reason;
  CounterUserEntity get user;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CounterUpdateFailedImplCopyWith<_$CounterUpdateFailedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CounterFailureImplCopyWith<$Res> {
  factory _$$CounterFailureImplCopyWith(_$CounterFailureImpl value, $Res Function(_$CounterFailureImpl) then) =
      __$$CounterFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CounterFailureImplCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res, _$CounterFailureImpl>
    implements _$$CounterFailureImplCopyWith<$Res> {
  __$$CounterFailureImplCopyWithImpl(_$CounterFailureImpl _value, $Res Function(_$CounterFailureImpl) _then)
    : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CounterFailureImpl extends CounterFailure {
  const _$CounterFailureImpl() : super._();

  @override
  String toString() {
    return 'CounterState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CounterFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int curValue, CounterUserEntity user) idle,
    required TResult Function(int curValue, CounterUserEntity user) updating,
    required TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user) updateFailed,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int curValue, CounterUserEntity user)? idle,
    TResult? Function(int curValue, CounterUserEntity user)? updating,
    TResult? Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int curValue, CounterUserEntity user)? idle,
    TResult Function(int curValue, CounterUserEntity user)? updating,
    TResult Function(int curValue, CounterUpdateFailedReason reason, CounterUserEntity user)? updateFailed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterInitial value) initial,
    required TResult Function(CounterLoading value) loading,
    required TResult Function(CounterIdle value) idle,
    required TResult Function(CounterUpdating value) updating,
    required TResult Function(CounterUpdateFailed value) updateFailed,
    required TResult Function(CounterFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterInitial value)? initial,
    TResult? Function(CounterLoading value)? loading,
    TResult? Function(CounterIdle value)? idle,
    TResult? Function(CounterUpdating value)? updating,
    TResult? Function(CounterUpdateFailed value)? updateFailed,
    TResult? Function(CounterFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterInitial value)? initial,
    TResult Function(CounterLoading value)? loading,
    TResult Function(CounterIdle value)? idle,
    TResult Function(CounterUpdating value)? updating,
    TResult Function(CounterUpdateFailed value)? updateFailed,
    TResult Function(CounterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CounterFailure extends CounterState {
  const factory CounterFailure() = _$CounterFailureImpl;
  const CounterFailure._() : super._();
}
