import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda01FvmSlide extends SlideWidget {
  const Agenda01FvmSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.fvm.image(
            width: 400 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse('https://fvm.app'),
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
DVM は FVM という CLI ツールにインスパイアされて開発しました。
おそらく、本日参加されているほとんどの方がご存知ではないでしょうか。

つまり、DVM は FVM の Dart 版で、使い方は FVM とほぼ同じです。''';
}
