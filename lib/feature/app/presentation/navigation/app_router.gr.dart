// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CounterScreenFlow]
class CounterScreenRoute extends PageRouteInfo<void> {
  const CounterScreenRoute({List<PageRouteInfo>? children})
    : super(
        CounterScreenRoute.name,
        initialChildren: children,
      );

  static const String name = 'CounterScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CounterScreenFlow());
    },
  );
}
