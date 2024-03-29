import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda01PubDevSlide extends SlideWidget {
  const Agenda01PubDevSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.dvmPubDev.image(
            width: 320 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse('https://pub.dev/packages/dvmx'),
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
pub.dev には dvmx という名前で公開しています。
本当は dvm という名前で公開したかったのですが、6年前に既に dvm という名前で公開しているパッケージがあったため、妥協して dvmx という名前にしています。''';
}
