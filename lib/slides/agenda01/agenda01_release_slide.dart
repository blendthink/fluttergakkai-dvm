import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda01ReleaseSlide extends SlideWidget {
  const Agenda01ReleaseSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final imageWidth = 240 * scale;
    final body = Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.pubDev.image(
                width: imageWidth,
                fit: BoxFit.fitWidth,
              ),
              const ScalerGap(8),
              Reference(
                uri: Uri.parse('https://pub.dev'),
              ),
            ],
          ),
          const ScalerGap(32),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.homebrew.image(
                width: imageWidth,
                fit: BoxFit.fitWidth,
              ),
              const ScalerGap(8),
              Reference(
                uri: Uri.parse('https://brew.sh'),
              ),
            ],
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
早速、DVM を使ってみたいという方は、 pub.dev や Homebrew 経由で利用できるようにしていますので、ぜひご利用ください。''';
}
