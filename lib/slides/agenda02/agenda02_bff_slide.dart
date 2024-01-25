import 'package:dvm/components/reference.dart';
import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Ageda02BffSlide extends SlideWidget {
  const Ageda02BffSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.bff.image(
            width: 280 * scale,
            fit: BoxFit.fitWidth,
          ),
          const ScalerGap(8),
          Reference(
            uri: Uri.parse(
              'https://flutterkaigi.jp/2023/sessions/972ffbac-422b-4d4b-9686-f59c4438da04',
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
また、FlutterKaigi で別のゆめみメンバーが登壇していましたが、業務でも Dart を使って BFF を開発したり、ツール開発したりすることが増えていったことも、大きなきっかけとなりました。''';
}
