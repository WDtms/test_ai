import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_ai/core/di/assembly_provider.dart';
import 'package:test_ai/feature/counter/di/counter_assembly.dart';
import 'package:test_ai/feature/counter/presentation/counter/counter_screen_view_controller.dart';

@RoutePage()
class CounterScreenFlow extends StatelessWidget implements AutoRouteWrapper {
  const CounterScreenFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => AssemblyProvider(
    create: () => CounterAssembly(context: context),
    builder: (_) => this,
  );

  @override
  Widget build(BuildContext context) {
    return CounterScreenViewController();
  }
}
