import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ai/feature/counter/domain/bloc/counter_bloc.dart';

abstract interface class ICounterScreenViewModel {
  StateStreamable<CounterState> get counterStateProvider;

  void incrementCounter();

  void decrementCounter();

  void goToUserDetails();
}

class CounterScreenViewModel extends StatefulWidget {
  const CounterScreenViewModel({super.key});

  @override
  State<CounterScreenViewModel> createState() => _CounterScreenViewModelState();
}

class _CounterScreenViewModelState extends State<CounterScreenViewModel>
    implements ICounterScreenViewModel {
  @override
  StateStreamable<CounterState> get counterStateProvider => _counterBloc;

  CounterBloc get _counterBloc => context.read<CounterBloc>();

  @override
  void initState() {
    super.initState();

    _counterBloc.add(CounterEvent.increment());
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void decrementCounter() => _counterBloc.add(CounterEvent.decrement());

  @override
  void incrementCounter() => _counterBloc.add(CounterEvent.increment());

  @override
  void goToUserDetails() {
    // TODO: implement goToUserDetails
  }
}
