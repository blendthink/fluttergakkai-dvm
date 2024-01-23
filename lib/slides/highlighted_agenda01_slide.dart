import 'package:dvm/components/agenda/agenda_header.dart';
import 'package:dvm/components/agenda/agenda_title.dart';
import 'package:dvm/data/agenda.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class HighlightedAgenda01Slide extends SlideWidget {
  const HighlightedAgenda01Slide({super.key});

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
            AgendaTitle(Agenda.agenda01, isHighlighte: true),
            AgendaTitle(Agenda.agenda02),
            AgendaTitle(Agenda.agenda03),
            AgendaTitle(Agenda.agenda04),
            AgendaTitle(Agenda.agenda05),
            ScalerGap(36),
          ],
        ),
      ],
    );
  }

  @override
  String get speakerNote => '''
まずは、DVM の概要をお話しします。''';
}
