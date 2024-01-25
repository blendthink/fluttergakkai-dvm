import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda04DocumentPageDescriptionSlide extends SlideWidget {
  const Agenda04DocumentPageDescriptionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.astro.image(
                width: 180 * scale,
                fit: BoxFit.fitWidth,
              ),
              const ScalerGap(8),
              Reference(
                uri: Uri.parse('https://astro.build'),
              ),
            ],
          ),
          const ScalerGap(32),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.docusaurus.image(
                width: 180 * scale,
                fit: BoxFit.fitWidth,
              ),
              const ScalerGap(8),
              Reference(
                uri: Uri.parse('https://docusaurus.io'),
              ),
            ],
          ),
        ],
      ),
    );

    return TitleHeaderSlide(
      title: Agenda.agenda04.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
DVM のドキュメントページは、何を使って作成しようか悩んでいて、現状 Astro と Docusaurus のどちらかを検討しています。

もし、おすすめなどあれば教えていただけると嬉しいです。''';
}
