import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:slidex/src/internal/home/menu/slide_preview.dart';
import 'package:slidex/src/internal/home/menu/slide_preview_query.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';
import 'package:slidex/src/internal/slide_framework.dart';
import 'package:slidex/src/internal/slide_query.dart';

final class SlidePreviews extends StatefulWidget {
  const SlidePreviews({super.key});

  @override
  State<SlidePreviews> createState() => _SlidePreviewsState();
}

class _SlidePreviewsState extends State<SlidePreviews> {
  late final AutoScrollController _controller;

  @override
  void initState() {
    _controller = AutoScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final slides = context.framework.slides;
    final gap = SizedBox(width: 12 * context.frameScale);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        _controller.scrollToIndex(context.slideNumber),
      );
    });
    return ListView.separated(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      itemCount: slides.length + 2,
      itemBuilder: (context, index) {
        if (index == 0) {
          return gap;
        }
        if (index == slides.length + 1) {
          return gap;
        }
        final slideIndex = index - 1;
        final slide = slides[slideIndex];
        return AutoScrollTag(
          key: ValueKey(slideIndex),
          index: slideIndex,
          controller: _controller,
          child: SlidePreviewQuery(
            slideIndex: slideIndex,
            slide: slide,
            child: const SlidePreview(),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return gap;
      },
    );
  }
}
