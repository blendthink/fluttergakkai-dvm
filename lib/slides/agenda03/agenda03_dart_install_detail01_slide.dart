import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda03DartInstallDetail01Slide extends SlideWidget {
  const Agenda03DartInstallDetail01Slide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.dartDownloadUrls.image(
            width: 400 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse(
              'https://dart.dev/get-dart/archive#download-urls',
            ),
          ),
        ],
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda03.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
Dart SDK を取得するだけであれば、公式ドキュメントに記載されている Download URLs を使えばフォーマットも指定されていたため問題なさそうでした。

しかし、現在リリースされている Dart SDK のバージョン一覧を取得する方法を探しても探しても見つけることができず困り果てていました。''';
}
