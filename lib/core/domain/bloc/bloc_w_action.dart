import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ai/core/domain/bloc/i_streamable_w_action.dart';

abstract base class BlocWAction<Event, State, Action> extends Bloc<Event, State> implements IStreamableWAction<State, Action> {
  BlocWAction(super.initialState);

  final _actionController = StreamController<Action>.broadcast();

  @override
  Stream<Action> get actionStream => _actionController.stream;

  @override
  void action(Action action) => _actionController.add(action);

  @override
  Future<void> close() async {
    await _actionController.close();
    return super.close();
  }
}
