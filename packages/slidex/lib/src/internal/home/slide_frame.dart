import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/menu/slide_menu.dart';
import 'package:slidex/src/internal/home/slide_background.dart';
import 'package:slidex/src/internal/home/slide_footer.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';
import 'package:slidex/src/internal/home/slide_tap_area.dart';

final class SlideFrame extends StatelessWidget {
  const SlideFrame({
    required Widget child,
    super.key,
  }) : _child = child;

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final frameHeight = constraints.maxHeight;
            return SlideFrameQuery(
              frameHeight: frameHeight,
              child: _SlideFrameContent(
                child: _child,
              ),
            );
          },
        ),
      ),
    );
  }
}

final class _SlideFrameContent extends StatelessWidget {
  const _SlideFrameContent({
    required Widget child,
  }) : _child = child;

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return MediaQuery(
      data: data.copyWith(
        textScaler: TextScaler.linear(context.frameScale),
      ),
      child: Stack(
        children: [
          const SlideBackground(),
          _child,
          const SlideFooter(),
          const SlideTapArea(),
          const SlideMenu(),
        ],
      ),
    );
  }
}
