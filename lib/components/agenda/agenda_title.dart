import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class AgendaTitle extends StatelessWidget {
  const AgendaTitle(this._title, {super.key});

  final String _title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        const ScalerGap(12),
        Text(
          '\u2022  $_title',
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
