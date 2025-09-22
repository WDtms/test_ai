// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_ai/core/di/assembly.dart';

typedef CreateAssembly<T extends Assembly> = T Function();

typedef AssemblyWidgetBuilder<T extends Assembly> = Widget Function(BuildContext context);

class AssemblyProvider<T extends Assembly> extends StatefulWidget {
  const AssemblyProvider({
    required this.create,
    required this.builder,
    this.placeholderBuilder,
    super.key,
  });

  final CreateAssembly<T> create;

  final WidgetBuilder? placeholderBuilder;

  final AssemblyWidgetBuilder<T> builder;

  @override
  State<AssemblyProvider<T>> createState() => _AssemblyProviderState();
}

class _AssemblyProviderState<T extends Assembly> extends State<AssemblyProvider<T>> {
  late final T _assembly;

  late final Future<void> _assemblyInit;

  @override
  void initState() {
    super.initState();

    _assembly = widget.create();
    _assemblyInit = _assembly.init();
  }

  @override
  void dispose() {
    _assembly.dispose().ignore();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _assemblyInit,
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Provider(
            create: (_) => _assembly,
            child: widget.builder(context),
          );
        }

        return widget.placeholderBuilder?.call(context) ??
            SizedBox.expand(
              child: Container(
                color: Colors.white,
              ),
            );
      },
    );
  }
}
