part of 'counter_bloc.dart';

@freezed
sealed class CounterState with _$CounterState {
  const CounterState._();

  const factory CounterState.initial() = CounterInitial;

  const factory CounterState.loading() = CounterLoading;

  @Implements<CounterData>()
  const factory CounterState.idle({
    required int curValue,
    required CounterUserEntity user,
  }) = CounterIdle;

  @Implements<CounterData>()
  const factory CounterState.updating({
    required int curValue,
    required CounterUserEntity user,
  }) = CounterUpdating;

  @Implements<CounterData>()
  const factory CounterState.updateFailed({
    required int curValue,
    required CounterUpdateFailedReason reason,
    required CounterUserEntity user,
  }) = CounterUpdateFailed;

  const factory CounterState.failure() = CounterFailure;
}

enum CounterUpdateFailedReason { validating, somethingWentWrong }

sealed class CounterData implements CounterState {
  final int curValue;
  final CounterUserEntity user;

  const CounterData({
    required this.curValue,
    required this.user,
  });
}
