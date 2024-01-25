import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda02AsdfSlide extends SlideWidget {
  const Agenda02AsdfSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.asdf.image(
            height: 220 * scale,
            fit: BoxFit.fitHeight,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse('https://asdf-vm.com'),
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
すでに Dart SDK のバージョン管理ツールないのかなと探してみたところ、きちんとメンテナンスされていそうなものは asdf くらいしか見つけることができませんでした。''';
}
