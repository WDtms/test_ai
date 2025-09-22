import 'package:flutter_bloc/flutter_bloc.dart';

/// Билдер Bloc для [StateStreamable].
class StateStreamableSelector<S, T> extends BlocSelector<StateStreamable<S>, S, T> {
  const StateStreamableSelector({
    required StateStreamable<S> state,
    required super.selector,
    required super.builder,
    super.key,
  }) : super(bloc: state);
}
