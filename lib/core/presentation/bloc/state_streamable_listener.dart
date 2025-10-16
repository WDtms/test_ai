import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ai/core/domain/bloc/i_streamable_w_action.dart';
import 'package:test_ai/core/presentation/bloc/bloc_action_listener.dart';

/// Листенер Bloc для [StateStreamable].
class StateStreamableListener<S, A> extends BlocActionListener<IStreamableWAction<S, A>, S, A> {
  const StateStreamableListener({
    required IStreamableWAction<S, A> state,
    required super.actionListener,
    super.child,
    super.key,
  }) : super(bloc: state);
}
