import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda04LatestOptionSlide extends SlideWidget {
  const Agenda04LatestOptionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final body = Center(
      child: Text(
        '--latest オプションを追加する',
        style: theme.textTheme.titleLarge,
      ),
    );

    return TitleHeaderSlide(
      title: Agenda.agenda04.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
いくつかのコマンドに --latest オプションを追加します。

これはどういうことかというと''';
}
