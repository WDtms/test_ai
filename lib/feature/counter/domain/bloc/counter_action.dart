part of 'counter_bloc.dart';

@freezed
sealed class CounterAction with _$CounterAction {
  const factory CounterAction.showErrorOnUpdating({
    required CounterUpdateFailedReason reason,
  }) = _CounterShowErrorOnUpdating;
}

enum CounterUpdateFailedReason { validating, somethingWentWrong }
