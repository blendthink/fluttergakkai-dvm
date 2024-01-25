import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda04LatestOptionDescriptionSlide extends SlideWidget {
  const Agenda04LatestOptionDescriptionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    const code = '''
# 最新バージョンのみ表示される
dvm releases --latest

# 最新バージョンをインストールする
dvm install --latest

# 最新バージョンを使用してプロジェクトの設定を行う
dvm use --latest''';
    final body = Center(
      child: HighlightView(
        code: code,
        fileName: 'terminal',
        language: Language.bash,
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
ご覧のように自動的に Dart SDK の最新バージョンを取得して、それを利用するようになります。

新規にプロジェクトを作成しようとした時に「あれ？最新の Dart SDK バージョンってなんだったっけ？」とならなくなります。''';
}
