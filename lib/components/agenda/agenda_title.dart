import 'package:dvm/data/agenda.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class AgendaTitle extends StatelessWidget {
  const AgendaTitle(
    this._agenda, {
    bool isHighlighte = false,
    super.key,
  }) : _isHighlighte = isHighlighte;

  final Agenda _agenda;

  final bool _isHighlighte;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        const ScalerGap(24),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: _isHighlighte
                  ? theme.colorScheme.tertiary
                  : Colors.transparent,
              width: 2 * context.frameScale,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          child: ScalerPadding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '${_agenda.index + 1}. ${_agenda.title}',
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}
