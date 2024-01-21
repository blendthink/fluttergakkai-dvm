import 'package:dvm/title/presentation_title.dart';
import 'package:dvm/title/speaker_label.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class TitleSlide extends SlideWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PresentationTitle(),
          ScalerGap(84),
          SpeakerLabel(),
          ScalerGap(40),
        ],
      ),
    );
  }

  @override
  String get speakerNote => 'それでは発表をはじめます。';
}
