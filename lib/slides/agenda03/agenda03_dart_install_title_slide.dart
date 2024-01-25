import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda03DartInstallTitleSlide extends SlideWidget {
  const Agenda03DartInstallTitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final body = Center(
      child: Text(
        'Dart SDK の取得方法',
        style: theme.textTheme.titleLarge,
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda03.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
まず1つ目が、Dart SDK の取得方法です。''';
}
