import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda01HomebrewInstallSlide extends SlideWidget {
  const Agenda01HomebrewInstallSlide({super.key});

  @override
  Widget build(BuildContext context) {
    const code = '''
brew install blendfactory/tap/dvm''';
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
ご覧のように Homebrew tap で追加したリポジトリから dvm をインストールします。

これらのようにして dvm コマンドを利用できるようになります。
実際に使用する際のコマンドについては、FVM と似ているためここでの紹介は省略します。''';
}
