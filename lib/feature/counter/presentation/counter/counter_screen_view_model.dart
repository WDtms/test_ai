import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ai/feature/counter/di/counter_assembly.dart';
import 'package:test_ai/feature/counter/domain/bloc/counter_bloc.dart';
import 'package:test_ai/feature/counter/presentation/counter/counter_screen_view.dart';

abstract interface class ICounterScreenViewModel {
  StateStreamable<CounterState> get counterStateProvider;

  void incrementCounter();

  void decrementCounter();

  void tryLoadInfoAgain();

  void goToUserDetails();
}

class CounterScreenViewModel extends StatefulWidget {
  const CounterScreenViewModel({super.key});

  @override
  State<CounterScreenViewModel> createState() => _CounterScreenViewModelState();
}

class _CounterScreenViewModelState extends State<CounterScreenViewModel> implements ICounterScreenViewModel {
  @override
  StateStreamable<CounterState> get counterStateProvider => _counterBloc;

  CounterBloc get _counterBloc => context.read<CounterAssembly>().counterBloc.get;

  @override
  Widget build(BuildContext context) {
    return CounterScreenView(wm: this);
  }

  @override
  void decrementCounter() => _counterBloc.add(CounterEvent.decrement());

  @override
  void incrementCounter() => _counterBloc.add(CounterEvent.increment());

  @override
  void tryLoadInfoAgain() => _counterBloc.add(CounterEvent.init());

  @override
  void goToUserDetails() {
    // TODO: implement goToUserDetails
  }
}
