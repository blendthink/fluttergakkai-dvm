import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/menu/slide_preview_frame.dart';
import 'package:slidex/src/internal/home/menu/slide_preview_query.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';
import 'package:slidex/src/internal/slide_query.dart';

final class SlidePreview extends StatelessWidget {
  const SlidePreview({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelMedium;
    final slideIndex = context.slideIndex;
    final isSelected = slideIndex == context.slideNumber;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$slideIndex',
          style: textStyle,
        ),
        SizedBox(height: 8 * context.frameScale),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? Colors.white : Colors.transparent,
              width: 2 * context.frameScale,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          child: const SlidePreviewFrame(),
        ),
      ],
    );
  }
}
