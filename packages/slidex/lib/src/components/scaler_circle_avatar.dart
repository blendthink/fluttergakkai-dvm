import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';

final class ScalerCircleAvatar extends StatelessWidget {
  const ScalerCircleAvatar({
    required double radius,
    required ImageProvider backgroundImage,
    super.key,
  })  : _radius = radius,
        _backgroundImage = backgroundImage;

  final double _radius;
  final ImageProvider _backgroundImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: _radius * context.frameScale,
      backgroundImage: _backgroundImage,
    );
  }
}
