import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda01LogoSlide extends SlideWidget {
  const Agenda01LogoSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.logo.image(
            width: 480 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(16),
          Text(
            'プロジェクトごとに Dart SDK のバージョンを管理する CLI ツール',
            style: theme.textTheme.titleSmall,
          ),
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
DVM は、プロジェクトごとに、 Dart SDK のバージョンを管理する、 CLI ツールです。

みなさん、すでにお気づきかもしれませんが''';
}
