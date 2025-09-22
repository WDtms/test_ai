import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TestLoader extends StatelessWidget {
  const TestLoader({
    required this.color,
    super.key,
    this.size = 24,
  });

  final Color color;

  final double size;

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: color,
      size: size,
    );
  }
}
