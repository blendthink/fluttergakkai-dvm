import 'package:dvm/components/agenda/agenda_header.dart';
import 'package:dvm/components/agenda/agenda_title.dart';
import 'package:dvm/data/agenda.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class AgendaSlide extends SlideWidget {
  const AgendaSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ScalerGap(36),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScalerGap(12),
            AgendaHeader(),
            AgendaTitle(Agenda.agenda01),
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
それでは、本題に入ります。

本日のアジェンダはご覧の通りです。''';
}