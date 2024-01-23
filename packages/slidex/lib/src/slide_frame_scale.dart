import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart'
    show SlideFrameQueryX;

extension SlideFrameScale on BuildContext {
  double get frameScale => SlideFrameQueryX(this).frameScale;
}
