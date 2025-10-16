import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ai/core/presentation/bloc/state_streamable_listener.dart';
import 'package:test_ai/feature/counter/di/counter_assembly.dart';
import 'package:test_ai/feature/counter/domain/bloc/counter_bloc.dart';
import 'package:test_ai/feature/counter/presentation/counter/counter_screen_view.dart';

abstract interface class ICounterScreenViewController {
  StateStreamable<CounterState> get counterStateProvider;

  void incrementCounter();

  void decrementCounter();

  void tryLoadInfoAgain();

  void goToUserDetails();
}

class CounterScreenViewController extends StatefulWidget {
  const CounterScreenViewController({super.key});

  @override
  State<CounterScreenViewController> createState() => _CounterScreenViewControllerState();
}

class _CounterScreenViewControllerState extends State<CounterScreenViewController>
    implements ICounterScreenViewController {
  @override
  StateStreamable<CounterState> get counterStateProvider => _counterBloc;

  CounterBloc get _counterBloc => context.read<CounterAssembly>().counterBloc.get;

  @override
  Widget build(BuildContext context) {
    return StateStreamableListener(
      state: _counterBloc,
      actionListener: (_, action) {
        // TODO(anyone): show snackbar with action
        // _snackBarController.show('Some text');
      },
      child: CounterScreenView(vc: this),
    );
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
    // final router = context.read<AppAssembly>().appRouter.get;
    //
    // router.push(UserDetails());
  }
}
