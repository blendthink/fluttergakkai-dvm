import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda02MotivationSlide extends SlideWidget {
  const Agenda02MotivationSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '自分で開発するしかない！',
            style: theme.textTheme.titleLarge,
          ),
          const ScalerGap(16),
          Assets.motivation.image(
            height: 160 * scale,
            fit: BoxFit.fitHeight,
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
自分で開発するしかない！うぉぉぉぉぉってなりました笑''';
}
