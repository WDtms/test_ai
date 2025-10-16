import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract interface class IStreamableWAction<State, Action> implements StateStreamable<State> {
  Stream<Action> get actionStream;

  @protected
  void action(Action action);
}
