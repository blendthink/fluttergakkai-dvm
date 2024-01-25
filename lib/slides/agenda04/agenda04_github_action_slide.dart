import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda04GithubActionSlide extends SlideWidget {
  const Agenda04GithubActionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final body = Center(
      child: Text(
        'GitHub Action を提供する',
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
DVM の設定値を抽出するための GitHub Action を提供します。

どういうことかというと''';
}
