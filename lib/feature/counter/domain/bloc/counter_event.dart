part of 'counter_bloc.dart';

@freezed
sealed class CounterEvent with _$CounterEvent {
  const factory CounterEvent.init() = _CounterInitEvent;

  const factory CounterEvent.increment() = _CounterIncrementEvent;

  const factory CounterEvent.decrement() = _CounterDecrementEvent;
}
