import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda03RiverpodTitleSlide extends SlideWidget {
  const Agenda03RiverpodTitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final body = Center(
      child: Text(
        'DI パッケージ',
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
次に、DI パッケージについてです。

DVM では普段使い慣れている riverpod を利用してみました。''';
}
