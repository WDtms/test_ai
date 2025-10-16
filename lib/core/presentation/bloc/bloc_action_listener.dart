import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test_ai/core/domain/bloc/i_streamable_w_action.dart';

typedef BlocActionWidgetListener<Action> = void Function(BuildContext context, Action action);

class BlocActionListener<B extends IStreamableWAction<State, Action>, State, Action> extends SingleChildStatefulWidget {
  const BlocActionListener({required this.actionListener, super.key, this.bloc, this.child}) : super(child: child);

  final B? bloc;
  final BlocActionWidgetListener<Action> actionListener;
  final Widget? child;

  @override
  SingleChildState<BlocActionListener<B, State, Action>> createState() => _BlocActionListenerState<B, State, Action>();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<B?>('bloc', bloc))
      ..add(ObjectFlagProperty<BlocActionWidgetListener<Action>>.has('actionListener', actionListener));
  }
}

class _BlocActionListenerState<B extends IStreamableWAction<State, Action>, State, Action>
    extends SingleChildState<BlocActionListener<B, State, Action>> {
  StreamSubscription<Action>? _subscription;
  late B _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc ?? context.read<B>();
    _subscribe();
  }

  @override
  void didUpdateWidget(BlocActionListener<B, State, Action> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldBloc = oldWidget.bloc ?? context.read<B>();
    final currentBloc = widget.bloc ?? oldBloc;
    if (oldBloc != currentBloc) {
      if (_subscription != null) {
        _unsubscribe();
        _bloc = currentBloc;
      }
      _subscribe();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final bloc = widget.bloc ?? context.read<B>();
    if (_bloc != bloc) {
      if (_subscription != null) {
        _unsubscribe();
        _bloc = bloc;
      }
      _subscribe();
    }
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    assert(child != null, '''${widget.runtimeType} used outside of MultiBlocListener must specify a child''');
    if (widget.bloc == null) {
      // Trigger a rebuild if the bloc reference has changed.
      // See https://github.com/felangel/bloc/issues/2127.
      context.select<B, bool>((bloc) => identical(_bloc, bloc));
    }
    return child!;
  }

  @override
  void dispose() {
    _unsubscribe();
    super.dispose();
  }

  void _subscribe() {
    _subscription = _bloc.actionStream.listen((action) {
      if (!mounted) return;
      widget.actionListener(context, action);
    });
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}
