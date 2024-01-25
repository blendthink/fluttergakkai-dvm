import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda02AsdfTitleSlide extends SlideWidget {
  const Agenda02AsdfTitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final body = Center(
      child: Text(
        'asdf を使って管理してみようかな...',
        style: theme.textTheme.titleLarge,
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda02.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
asdf を使って管理してみようかなと思い、使ってみたこともあったのですが''';
}
