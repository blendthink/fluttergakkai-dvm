import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda03DartInstallDetail02Slide extends SlideWidget {
  const Agenda03DartInstallDetail02Slide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.dartGetList.image(
            height: 260 * scale,
            fit: BoxFit.fitHeight,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse(
              'https://dart.dev/get-dart/archive',
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
ふとある時、「あれ？そういえば、このドキュメントページではどうやって取得しているんだ？」と疑問に思い、Chrome の開発者ツールで通信を確認してみました。

すると、Google Storage API を利用していることが分かり、どうやら認証なども必要なさそうだったのでそれを使うことにしました。''';
}
