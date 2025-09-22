import 'package:auto_route/auto_route.dart';
import 'package:test_ai/feature/counter/presentation/counter/counter_screen_flow.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Flow,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CounterScreenRoute.page, initial: true),
  ];
}
