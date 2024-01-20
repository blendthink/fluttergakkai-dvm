import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slidex/src/internal/slide_framework.dart';

final class SlideTapArea extends StatelessWidget {
  const SlideTapArea({super.key});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return const SizedBox.shrink();
    }

    final Color hoverColor;
    if (kIsWeb) {
      hoverColor = Theme.of(context).hoverColor;
    } else {
      hoverColor = Colors.transparent;
    }

    return Row(
      children: [
        Expanded(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              hoverColor: hoverColor,
              onTap: context.framework.previous,
              onLongPress: context.framework.menu,
            ),
          ),
        ),
        Expanded(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              hoverColor: hoverColor,
              onTap: context.framework.next,
              onLongPress: context.framework.menu,
            ),
          ),
        ),
      ],
    );
  }
}
