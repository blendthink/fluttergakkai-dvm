import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda01FigureSlide extends SlideWidget {
  const Agenda01FigureSlide({super.key});

  @override
  Widget build(BuildContext context) {
    const body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.cloud_outlined),
          Icon(Icons.storage),
        ],
      ),
    );

    return TitleHeaderSlide(
      title: Agenda.agenda01.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
せっかくなので、DVM の仕組みについてもう少し詳しく説明すると

まずは、各プロジェクトに Dart SDK のバージョンが記載された設定ファイルを作成します。
それを元に、公式が公開しているところから、 Dart SDK を取得します。
次に Cache 用のディレクトリを作成して、そこに取得した Dart SDK を保存します。
最後に、Cache の中の指定されたバージョンの Dart SDK のシンボリックリンクを各プロジェクトに作成します。

これらの処理が DVM の内部で自動的に行われて、プロジェクトごとに Dart SDK のバージョンを管理することが簡単にできるようになっています。''';
}
