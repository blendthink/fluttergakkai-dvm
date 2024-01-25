import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda02Dart3Slide extends SlideWidget {
  const Agenda02Dart3Slide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.dart3.image(
            width: 220 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse(
              'https://medium.com/dartlang/announcing-dart-3-53f065a10635',
            ),
          ),
        ],
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda02.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
一番大きなきっかけとなったのは Dart 3 の発表です。
Dart 3 で Records や Patterns などの強力な機能が追加されることを知り、それからはプライベートで Dart を使ってツール開発をしていくことが多くなっていきました。''';
}
