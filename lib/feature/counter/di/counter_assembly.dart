import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ai/core/di/assembly.dart';
import 'package:test_ai/feature/app/di/app_assembly.dart';
import 'package:test_ai/feature/counter/domain/bloc/counter_bloc.dart';

final class CounterAssembly extends Assembly {
  late final Registry<CounterBloc> counterBloc;

  CounterAssembly({required BuildContext context}) {
    final appAssembly = context.read<AppAssembly>();

    counterBloc = reg<CounterBloc>(
      () => CounterBloc(
        counterRepository: appAssembly.counterRepository.get,
        logger: appAssembly.logger.get,
      )..add(CounterEvent.init()),
    );
  }
}
