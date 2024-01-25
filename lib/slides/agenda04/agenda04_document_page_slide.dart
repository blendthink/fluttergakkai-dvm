import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda04DocumentPageSlide extends SlideWidget {
  const Agenda04DocumentPageSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final body = Center(
      child: Text(
        'ドキュメントを整備する',
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
公式ドキュメントを整備して公開します。

現在はまだ整備中ですが、DVM のバージョン 1.0.0 をリリースすると同時に公開する予定です。''';
}
