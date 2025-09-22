import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_ai/feature/app/presentation/app/app_flow.dart';

void main() async {
  await runZonedGuarded(
    () async {
      final binding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();

      await _setUpChrome();

      binding.allowFirstFrame();

      runApp(AppFlow());
    },
    (err, _) => debugPrint('Error: $err'),
  );
}

Future<void> _setUpChrome({
  bool enableEdgeToEdge = false,
  bool setTransparentNavigation = false,
}) async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  if (enableEdgeToEdge) {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  if (setTransparentNavigation) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
      ),
    );
  }
}
