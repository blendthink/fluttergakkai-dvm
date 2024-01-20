import 'package:flutter/material.dart';

final class SlideBackground extends StatelessWidget {
  const SlideBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.background;
    return ColoredBox(
      color: backgroundColor,
    );
  }
}
