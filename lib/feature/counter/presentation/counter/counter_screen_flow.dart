import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_ai/core/di/assembly_provider.dart';
import 'package:test_ai/feature/counter/di/counter_assembly.dart';
import 'package:test_ai/feature/counter/presentation/counter/counter_screen_view_model.dart';
import 'package:test_ai/uikit/loader/full_screen_loader.dart';

@RoutePage()
class CounterScreenFlow extends StatelessWidget implements AutoRouteWrapper {
  const CounterScreenFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => AssemblyProvider(
    create: () => CounterAssembly(context: context),
    builder: (_) => this,
    placeholderBuilder: (_) => FullScreenLoaderWidget(),
  );

  @override
  Widget build(BuildContext context) {
    return CounterScreenViewModel();
  }
}
