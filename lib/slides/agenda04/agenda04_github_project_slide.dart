import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda04GithubProjectSlide extends SlideWidget {
  const Agenda04GithubProjectSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.githubProject.image(
            width: 380 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse(
              'https://github.com/orgs/blendfactory/projects/1/views/1',
            ),
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
DVM の今後についてもっと興味ある方は、GitHub Project で開発スケジュールを公開していますので、ぜひご覧ください。''';
}
