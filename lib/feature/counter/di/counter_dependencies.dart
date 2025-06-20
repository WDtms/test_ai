import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test_ai/app/di/app_assembly.dart';
import 'package:test_ai/feature/counter/domain/bloc/counter_bloc.dart';

abstract final class CounterDependencies {
  static List<SingleChildWidget> providers(BuildContext context) {
    final appScope = context.read<AppAssembly>();

    return [
      BlocProvider(
        create: (_) => CounterBloc(
          counterRepository: appScope.counterRepository.get,
          logger: appScope.logger.get,
        ),
      ),
    ];
  }
}