import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';
import 'package:slidex/src/internal/slide_query.dart';

final class SlideFooter extends StatelessWidget {
  const SlideFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelSmall;

    final frameScale = context.frameScale;
    final flutterKaigiLogo = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '',
          style: textStyle?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );

    final framePadding = 12 * frameScale;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(framePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            flutterKaigiLogo,
            Visibility(
              visible: context.shouldShowSlideNumber,
              child: Text(
                '${context.slideNumber}',
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
