import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';

final class ScalerDivider extends StatelessWidget {
  const ScalerDivider({
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
    super.key,
  })  : _height = height,
        _thickness = thickness,
        _indent = indent,
        _endIndent = endIndent,
        _color = color;

  final double? _height;

  final double? _thickness;

  final double? _indent;

  final double? _endIndent;

  final Color? _color;

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    return Divider(
      height: _height == null ? null : _height * scale,
      thickness: _thickness == null ? null : _thickness * scale,
      indent: _indent == null ? null : _indent * scale,
      endIndent: _endIndent == null ? null : _endIndent * scale,
      color: _color,
    );
  }
}
