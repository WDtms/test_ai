import 'package:flutter_bloc/flutter_bloc.dart';

/// Листенер Bloc для [StateStreamable].
class StateStreamableListener<S> extends BlocListener<StateStreamable<S>, S> {
  const StateStreamableListener({
    required StateStreamable<S> state,
    required super.listener,
    super.child,
    super.key,
  }) : super(bloc: state);
}
