import 'package:flutter/material.dart';

final class PresentationTitle extends StatelessWidget {
  const PresentationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'Dart Version Manager (dvm) を開発してみたお話',
      style: theme.textTheme.displaySmall,
    );
  }
}
