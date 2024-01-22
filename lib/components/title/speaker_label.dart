import 'package:dvm/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class SpeakerLabel extends StatelessWidget {
  const SpeakerLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ScalerCircleAvatar(
          radius: 16,
          backgroundImage: Assets.speaker.provider(),
        ),
        const ScalerGap(12),
        Text(
          'blendthink / Tatsuya Okayama',
          style: theme.textTheme.labelLarge,
        ),
        const ScalerGap(36),
      ],
    );
  }
}
