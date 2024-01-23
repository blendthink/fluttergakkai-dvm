import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';

final class ScalerPadding extends StatelessWidget {
  const ScalerPadding({
    required EdgeInsetsGeometry padding,
    this.child,
    super.key,
  }) : _padding = padding;

  final EdgeInsetsGeometry _padding;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final scaledPadding = switch (_padding) {
      final EdgeInsetsDirectional p => EdgeInsetsDirectional.only(
          start: p.start * scale,
          end: p.end * scale,
          top: p.top * scale,
          bottom: p.bottom * scale,
        ),
      final EdgeInsetsGeometry p => EdgeInsets.only(
          left: p.horizontal / 2 * scale,
          right: p.horizontal / 2 * scale,
          top: p.vertical / 2 * scale,
          bottom: p.vertical / 2 * scale,
        )
    };
    return Padding(
      padding: scaledPadding,
      child: child,
    );
  }
}
