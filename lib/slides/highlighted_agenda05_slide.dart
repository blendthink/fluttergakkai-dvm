import 'package:dvm/components/agenda/agenda_header.dart';
import 'package:dvm/components/agenda/agenda_title.dart';
import 'package:dvm/data/agenda.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class HighlightedAgenda05Slide extends SlideWidget {
  const HighlightedAgenda05Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ScalerGap(36),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScalerGap(24),
            AgendaHeader(),
            ScalerGap(12),
            AgendaTitle(Agenda.agenda01),
            AgendaTitle(Agenda.agenda02),
            AgendaTitle(Agenda.agenda03),
            AgendaTitle(Agenda.agenda04),
            AgendaTitle(Agenda.agenda05, isHighlighte: true),
            ScalerGap(36),
          ],
        ),
      ],
    );
  }

  @override
  String get speakerNote => '''
''';
}
