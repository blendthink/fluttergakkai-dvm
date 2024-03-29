import 'package:flutter/material.dart';
import 'package:slidex/src/components/slide_widget.dart';

enum SlidePreviewQueryAspect {
  slideIndex,
  slide,
}

final class SlidePreviewQuery extends InheritedModel<SlidePreviewQueryAspect> {
  const SlidePreviewQuery({
    required int slideIndex,
    required SlideWidget slide,
    required super.child,
    super.key,
  })  : _slide = slide,
        _slideIndex = slideIndex;

  final int _slideIndex;

  final SlideWidget _slide;

  @override
  bool updateShouldNotify(SlidePreviewQuery oldWidget) {
    return _slideIndex != oldWidget._slideIndex || _slide != oldWidget._slide;
  }

  @override
  bool updateShouldNotifyDependent(
    SlidePreviewQuery oldWidget,
    Set<SlidePreviewQueryAspect> dependencies,
  ) {
    for (final dependency in dependencies) {
      switch (dependency) {
        case SlidePreviewQueryAspect.slideIndex:
          if (_slideIndex != oldWidget._slideIndex) {
            return true;
          }
        case SlidePreviewQueryAspect.slide:
          if (_slide != oldWidget._slide) {
            return true;
          }
      }
    }
    return false;
  }

  static SlidePreviewQuery _of(
    BuildContext context, [
    SlidePreviewQueryAspect? aspect,
  ]) {
    return InheritedModel.inheritFrom<SlidePreviewQuery>(
      context,
      aspect: aspect,
    )!;
  }

  static int _slideIndexOf(BuildContext context) {
    return _of(context, SlidePreviewQueryAspect.slideIndex)._slideIndex;
  }

  static SlideWidget _slideOf(BuildContext context) {
    return _of(context, SlidePreviewQueryAspect.slide)._slide;
  }
}

extension SlidePreviewQueryX on BuildContext {
  int get slideIndex => SlidePreviewQuery._slideIndexOf(this);

  SlideWidget get slide => SlidePreviewQuery._slideOf(this);
}
