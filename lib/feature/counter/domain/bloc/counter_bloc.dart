import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:test_ai/core/domain/entity/result.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_entity.dart';
import 'package:test_ai/feature/counter/domain/entity/counter_user_entity.dart';
import 'package:test_ai/feature/counter/domain/repository/i_counter_repository.dart';

part 'counter_event.dart';

part 'counter_state.dart';

part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final ICounterRepository _counterRepository;
  final LogWriter _logger;

  CounterBloc({
    required ICounterRepository counterRepository,
    required LogWriter logger,
  }) : _counterRepository = counterRepository,
       _logger = logger,
       super(const CounterState.initial()) {
    on<CounterEvent>(_onCounterEvent);
  }

  Future<void> _onCounterEvent(
    CounterEvent event,
    Emitter<CounterState> emit,
  ) async {
    switch (event) {
      case _CounterInitEvent():
        return _onInit(event, emit);
      case _CounterIncrementEvent():
        return _onIncrement(event, emit);
      case _CounterDecrementEvent():
        return _onDecrement(event, emit);
    }
  }

  Future<void> _onInit(CounterEvent event, Emitter<CounterState> emit) async {
    emit(const CounterState.loading());

    final results = await (
      _counterRepository.fetchUser(),
      _counterRepository.getCounter(),
    ).wait;

    switch (results) {
      case (ResultOk(data: final user), ResultOk(data: final counter)):
        return emit(
          CounterState.idle(
            curValue: counter.value,
            user: user,
          ),
        );
      default:
        return emit(
          CounterState.failure(),
        );
    }
  }

  Future<void> _onIncrement(CounterEvent event, Emitter<CounterState> emit) async {
    final state = this.state;

    switch (state) {
      case _CounterInitial() || _CounterLoading() || _CounterFailure():
        _logger.log('Unexpected state to start incrementing counter');

        return;
      case _CounterIdle(:final curValue, :final user) ||
          _CounterUpdating(:final curValue, :final user) ||
          _CounterUpdateFailed(:final curValue, :final user):
        return _tryToIncrementCounter(
          emit: emit,
          curValue: curValue,
          user: user,
        );
    }
  }

  Future<void> _onDecrement(CounterEvent event, Emitter<CounterState> emit) async {
    final state = this.state;

    switch (state) {
      case _CounterInitial() || _CounterLoading() || _CounterFailure():
        _logger.log('Unexpected state to start decrementing counter');

        return;
      case _CounterIdle(:final curValue, :final user) ||
          _CounterUpdating(:final curValue, :final user) ||
          _CounterUpdateFailed(:final curValue, :final user):
        return _tryToDecrementCounter(
          emit: emit,
          curValue: curValue,
          user: user,
        );
    }
  }

  Future<void> _tryToIncrementCounter({
    required Emitter<CounterState> emit,
    required int curValue,
    required CounterUserEntity user,
  }) async {
    final newCounter = curValue + 1;

    final result = await _counterRepository.updateCounter(newCounter);

    switch (result) {
      case ResultOk<CounterEntity, Exception>(data :final newValue):
        return emit(
          CounterState.idle(
            curValue: newValue.value,
            user: user,
          ),
        );
      case ResultFailed<CounterEntity, Exception>():
        return emit(
          CounterState.updateFailed(
            curValue: curValue,
            user: user,
            reason: CounterUpdateFailedReason.somethingWentWrong,
          ),
        );
    }
  }

  Future<void> _tryToDecrementCounter({
    required Emitter<CounterState> emit,
    required int curValue,
    required CounterUserEntity user,
  }) async {
    final newCounter = curValue - 1;

    final result = await _counterRepository.updateCounter(newCounter);

    switch (result) {
      case ResultOk<CounterEntity, Exception>(data :final newValue):
        return emit(
          CounterState.idle(
            curValue: newValue.value,
            user: user,
          ),
        );
      case ResultFailed<CounterEntity, Exception>():
        return emit(
          CounterState.updateFailed(
            curValue: curValue,
            user: user,
            reason: CounterUpdateFailedReason.somethingWentWrong,
          ),
        );
    }
  }
}
