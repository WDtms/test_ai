part of 'counter_bloc.dart';

@freezed
sealed class CounterState with _$CounterState {
  const factory CounterState.initial() = _CounterInitial;

  const factory CounterState.loading() = _CounterLoading;

  const factory CounterState.idle({
    required int curValue,
    required CounterUserEntity user,
  }) = _CounterIdle;

  const factory CounterState.updating({
    required int curValue,
    required CounterUserEntity user,
  }) = _CounterUpdating;

  const factory CounterState.updateFailed({
    required int curValue,
    required CounterUpdateFailedReason reason,
    required CounterUserEntity user,
  }) = _CounterUpdateFailed;

  const factory CounterState.failure() = _CounterFailure;
}

enum CounterUpdateFailedReason { validating, somethingWentWrong }
