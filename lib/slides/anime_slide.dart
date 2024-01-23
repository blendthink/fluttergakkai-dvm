import 'package:dvm/components/reference.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class AnimeSlide extends SlideWidget {
  const AnimeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.spiceAndWolf.image(
              width: width * 0.8,
              fit: BoxFit.fitWidth,
            ),
            const ScalerGap(8),
            Reference(
              uri: Uri.parse('https://spice-and-wolf.com/'),
            ),
          ],
        );
      },
    );
  }

  @override
  String get speakerNote => '''
決して関係者とか回し者とかではないのですが、アイスブレイク的にほんの少しだけ紹介させていただきます。

狼と香辛料は、2008年にアニメ化されて、現在では2期まで放送済みなのですが、なんと今回、一番最初から完全新作としてアニメ化されるそうです。
エンジニア界隈でいう、いわゆるリニューアルというやつですね。

4月から放送開始予定ですので、興味のある方はぜひご覧ください。''';
}
