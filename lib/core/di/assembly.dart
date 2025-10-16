// ignore_for_file: no-empty-block

import 'dart:async';

typedef Disposer<T> = FutureOr<void> Function(T v);
typedef Factory<T> = FutureOr<T> Function();

class Assembly {
  final Set<Registry<Object?>> registries = {};

  FutureOr<void> init() {
    Future<void>? chain;

    for (final registry in registries) {
      final r = registry.init();

      if (r is Future<void>) {
        chain = (chain == null) ? r : chain.then((_) => r);
      }
    }

    void afterAll() => onInitialized();

    if (chain != null) {
      return chain.then((_) => afterAll());
    } else {
      afterAll();
    }
  }

  Future<void> dispose() async {
    for (final registry in registries) {
      await registry.onDispose?.call(registry.get);
    }
  }

  /// Called after all registries are initialized.
  void onInitialized() {}

  Registry<T> reg<T>(
    Factory<T> creator, {
    Disposer<T>? onDispose,
  }) {
    final registry = Registry<T>(
      onCreate: creator,
      onDispose: onDispose,
    );

    registries.add(registry);

    return registry;
  }
}

class Registry<T> {
  final Factory<T> onCreate;
  final Disposer<T>? onDispose;

  bool _isInitialized = false;

  late final T _value;

  T get get {
    if (!_isInitialized) {
      throw StateError('Registry is not initialized');
    }

    return _value;
  }

  bool get initialized => _isInitialized;

  Registry({
    required this.onCreate,
    required this.onDispose,
  });

  FutureOr<void> init() {
    final result = onCreate();

    if (result is Future<T>) {
      return result.then((v) {
        _value = v;
        _isInitialized = true;
      });
    } else {
      _value = result;
      _isInitialized = true;
    }
  }
}
