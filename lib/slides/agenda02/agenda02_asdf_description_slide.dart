import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda02AsdfDescriptionSlide extends SlideWidget {
  const Agenda02AsdfDescriptionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const text = '''
\u2022  自動で VS Code の設定ファイルを更新してくれる
\u2022  fvm doctor コマンドで設定すべきパスを表示してくれる
\u2022  fvm dart upgrade という意図しないコマンドの実行を防いでくれる
''';

    final body = Center(
      child: Text(
        text,
        style: theme.textTheme.titleMedium?.copyWith(
          height: 3,
        ),
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda02.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
ご覧のように asdf にはない FVM の便利な機能がいくつかあって、自分の中でもうひと押しできる何かがありませんでした。''';
}
