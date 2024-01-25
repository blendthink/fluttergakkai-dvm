import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda04GithubActionDescriptionSlide extends SlideWidget {
  const Agenda04GithubActionDescriptionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    const code = '''
{
  "dartSdkVersion": "3.2.4"
}''';
    final body = Center(
      child: HighlightView(
        code: code,
        fileName: '.dvm/config.json',
        language: Language.json,
        theme: androidStudioTheme,
      ),
    );

    return TitleHeaderSlide(
      title: Agenda.agenda04.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
プロジェクトで dvm use というコマンドを使用すると、.dvm/config.json というファイルが作成されます。

現時点では Dart SDK のバージョンのみが記載されていますが、今後は他にも設定値が増えていきます。
それらの設定値を抽出して GitHub Action で利用しやすくするためのツールを提供する予定です。''';
}
