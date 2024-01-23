import 'package:dvm/components/intro/speacker_intro.dart';
import 'package:dvm/components/intro/speaker_avatar.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class IntroSlide extends SlideWidget {
  const IntroSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpeakerAvatar(),
        ScalerGap(36),
        SpeakerIntro(),
      ],
    );
  }

  @override
  String get speakerNote => '''
まずはじめに自己紹介をさせていただきます。
SNS などでは、おかやまん、もしくは、blendthink という名前で活動しています。
株式会社ゆめみでは、Flutter テックリードとして働いています。
趣味は、将棋の研究やオンライン対戦をしたり、プログラミングしていろいろ遊んだり、アニメ鑑賞したりすることです。

特にアニメについては、４月からはじまる「狼と香辛料」を楽しみにしています。''';
}
