import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda01PubDevInstallSlide extends SlideWidget {
  const Agenda01PubDevInstallSlide({super.key});

  @override
  Widget build(BuildContext context) {
    const code = '''
dart pub global activate dvmx''';
    final body = Center(
      child: HighlightView(
        code: code,
        fileName: 'terminal',
        language: Language.bash,
        theme: androidStudioTheme,
      ),
    );

    return TitleHeaderSlide(
      title: Agenda.agenda01.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
pub.dev 経由で利用する場合は、 ご覧のようにグローバルで dvm を有効化します。''';
}
