import 'package:flutter/material.dart';
import 'package:test_ai/uikit/loader/test_loader.dart';
import 'package:test_ai/uikit/theme/test_color_scheme.dart';

class FullScreenLoaderWidget extends StatelessWidget {
  const FullScreenLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.testColorScheme;

    return Container(
      color: Colors.white,
      child: Center(
        child: TestLoader(color: colorScheme.positive),
      ),
    );
  }
}
