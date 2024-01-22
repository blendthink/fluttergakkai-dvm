import 'package:dvm/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class SpeakerAvatar extends StatelessWidget {
  const SpeakerAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScalerCircleAvatar(
      radius: 100,
      backgroundImage: Assets.speaker.provider(),
    );
  }
}
