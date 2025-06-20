// ignore_for_file: prefer-correct-callback-field-name

import 'package:flutter/material.dart';
import 'package:test_ai/core/di/assembly.dart';

typedef CreateAssembly<T extends Assembly> = T Function();

typedef AssemblyWidgetBuilder<T extends Assembly> = Widget Function(
    BuildContext context, T assembly);

/// Билдер для создания [Assembly].
///
/// Инкапсулирует логику инициализации [Assembly], вызывая метод [Assembly.init].
class AssemblyBuilder<T extends Assembly> extends StatefulWidget {
  const AssemblyBuilder({
    required this.create,
    required this.builder,
    this.placeholderBuilder,
    super.key,
  });

  /// Функция, которая создаёт экземпляр [Assembly].
  ///
  /// Не используйте уже созданный объект!
  final CreateAssembly<T> create;

  /// Показывается, пока создаётся [Assembly].
  ///
  /// По умолчанию показывается пустой [SizedBox.shrink].
  final WidgetBuilder? placeholderBuilder;

  /// Виджет, который будет отображаться.
  ///
  /// В колбек попадает экземпляр [Assembly], который уже прошёл инициализацию.
  final AssemblyWidgetBuilder<T> builder;

  @override
  State<AssemblyBuilder<T>> createState() => _AssemblyBuilderState();
}

class _AssemblyBuilderState<T extends Assembly>
    extends State<AssemblyBuilder<T>> {
  late final T _assembly;

  @override
  void initState() {
    super.initState();

    _assembly = widget.create();
  }

  @override
  void dispose() {
    _assembly.dispose().ignore();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _assembly.init(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return widget.builder(context, _assembly);
        }

        return widget.placeholderBuilder?.call(context) ??
            const SizedBox.shrink();
      },
    );
  }
}
