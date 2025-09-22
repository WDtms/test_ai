import 'package:flutter/material.dart';
import 'package:test_ai/core/domain/bloc/state_streamable_builder.dart';
import 'package:test_ai/feature/counter/domain/bloc/counter_bloc.dart';
import 'package:test_ai/feature/counter/presentation/counter/counter_screen_view_model.dart';
import 'package:test_ai/l10n/app_localizations_x.dart';
import 'package:test_ai/uikit/buttons/enums/test_button_size.dart';
import 'package:test_ai/uikit/buttons/enums/test_button_state.dart';
import 'package:test_ai/uikit/buttons/enums/test_button_style.dart';
import 'package:test_ai/uikit/buttons/test_button.dart';
import 'package:test_ai/uikit/error/full_screen_error_widget.dart';
import 'package:test_ai/uikit/loader/full_screen_loader.dart';
import 'package:test_ai/uikit/theme/test_typography.dart';

class CounterScreenView extends StatelessWidget {
  const CounterScreenView({required this.wm, super.key});

  final ICounterScreenViewModel wm;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.overEngineeredCounter)),
      body: Stack(
        children: [
          StateStreamableBuilder(
            state: wm.counterStateProvider,
            builder: (_, state) => switch (state) {
              CounterInitial() || CounterLoading() => FullScreenLoaderWidget(),
              CounterData() => _CounterSuccessBody(successState: state, wm: wm),
              CounterFailure() => FullScreenErrorWidget(onTryAgain: wm.tryLoadInfoAgain),
            },
          ),
        ],
      ),
    );
  }
}

class _CounterSuccessBody extends StatelessWidget {
  const _CounterSuccessBody({required this.successState, required this.wm});

  final CounterData successState;
  final ICounterScreenViewModel wm;

  @override
  Widget build(BuildContext context) {
    final typography = context.testTypography;

    return SafeArea(
      child: Stack(
        children: [
          Center(
            child: Text(
              successState.curValue.toString(),
              style: typography.displayXl.copyWith(fontSize: 128),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ControlButton(
                    onPressed: wm.decrementCounter,
                    icon: Icons.remove,
                  ),
                  _ControlButton(
                    onPressed: wm.incrementCounter,
                    icon: Icons.add,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ControlButton extends StatelessWidget {
  const _ControlButton({
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TestButton(
      onPressed: onPressed,
      state: TestButtonState.active,
      size: TestButtonSize.large,
      style: TestButtonStyle.primary,
      child: Icon(icon, size: 24),
    );
  }
}
