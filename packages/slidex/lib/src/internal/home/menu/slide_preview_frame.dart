import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/menu/slide_preview_query.dart';
import 'package:slidex/src/internal/home/slide_background.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';
import 'package:slidex/src/internal/slide_framework.dart';

final class SlidePreviewFrame extends StatelessWidget {
  const SlidePreviewFrame({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return SizedBox(
      height: context.previewHeight,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: MediaQuery(
          data: data.copyWith(
            textScaler: TextScaler.linear(context.previewScale),
          ),
          child: Stack(
            children: [
              const SlideBackground(),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () async => context.framework.goToSlide(
                    context.slideIndex,
                  ),
                  child: SlideFrameQuery(
                    frameHeight: context.previewHeight,
                    child: SizedBox(
                      width: double.infinity,
                      height: context.previewHeight,
                      child: context.slide,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
