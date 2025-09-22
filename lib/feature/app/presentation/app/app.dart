import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_ai/feature/app/di/app_assembly.dart';
import 'package:test_ai/l10n/app_localizations.g.dart';
import 'package:test_ai/uikit/theme/test_color_scheme.dart';
import 'package:test_ai/uikit/theme/test_theme.dart';
import 'package:test_ai/uikit/theme/test_typography.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appAssembly = context.read<AppAssembly>();
    final appRouter = appAssembly.appRouter.get;

    final theme = TestTheme(
      colorScheme: TestColorScheme.light(),
      typography: TestTypography.common(),
    );

    return MaterialApp.router(
      theme: theme.createThemeData(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      locale: _localizations.firstOrNull,
      localizationsDelegates: _localizationsDelegates,
      supportedLocales: _localizations,
    );
  }
}

const _localizations = [
  Locale('ru', 'RU'),
];

const _localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
