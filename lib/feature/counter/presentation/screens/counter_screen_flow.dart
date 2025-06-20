import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';
import 'package:test_ai/feature/counter/di/counter_dependencies.dart';
import 'package:test_ai/feature/counter/presentation/screens/counter_screen_view_model.dart';

@RoutePage()
class CounterScreenFlow extends StatelessWidget implements AutoRouteWrapper {
  const CounterScreenFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiProvider(
    providers: CounterDependencies.providers(context),
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return CounterScreenViewModel();
  }
}
