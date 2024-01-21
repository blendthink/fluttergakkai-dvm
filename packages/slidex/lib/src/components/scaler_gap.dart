import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';

class ScalerGap extends StatelessWidget {
  const ScalerGap(this._mainAxisExtent, {super.key});

  final double _mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return Gap(_mainAxisExtent * context.frameScale);
  }
}
