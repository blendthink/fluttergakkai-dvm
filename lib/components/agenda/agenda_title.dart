import 'package:dvm/data/agenda.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class AgendaTitle extends StatelessWidget {
  const AgendaTitle(this._agenda, {super.key});

  final Agenda _agenda;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        const ScalerGap(12),
        Text(
          '${_agenda.index + 1}. ${_agenda.title}',
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
