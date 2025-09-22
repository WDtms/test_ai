import 'package:flutter/material.dart';
import 'package:test_ai/l10n/app_localizations_x.dart';
import 'package:test_ai/uikit/buttons/enums/test_button_size.dart';
import 'package:test_ai/uikit/buttons/enums/test_button_state.dart';
import 'package:test_ai/uikit/buttons/enums/test_button_style.dart';
import 'package:test_ai/uikit/buttons/test_button.dart';
import 'package:test_ai/uikit/theme/test_typography.dart';

class FullScreenErrorWidget extends StatelessWidget {
  const FullScreenErrorWidget({required this.onTryAgain, super.key});

  final VoidCallback onTryAgain;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final typography = context.testTypography;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(l10n.somethingWentWrong),
        SizedBox(height: 20),
        TestButton(
          onPressed: onTryAgain,
          state: TestButtonState.active,
          size: TestButtonSize.medium,
          style: TestButtonStyle.primary,
          child: Text(l10n.tryAgain, style: typography.textMdRegular),
        ),
      ],
    );
  }
}
