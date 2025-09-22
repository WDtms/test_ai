import 'package:flutter/material.dart';
import 'package:test_ai/core/di/assembly_provider.dart';
import 'package:test_ai/feature/app/di/app_assembly.dart';
import 'package:test_ai/feature/app/presentation/app/app.dart';

class AppFlow extends StatelessWidget {
  const AppFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return AssemblyProvider(
      create: () => AppAssembly(),
      builder: (ctx) => App(),
    );
  }
}
