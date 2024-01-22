import 'dart:convert';

import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:slidex/src/internal/home/slide_frame.dart';
import 'package:slidex/src/internal/slide_framework.dart';
import 'package:slidex/src/internal/slide_intents.dart';
import 'package:slidex/src/internal/slide_query.dart';

final class SlideHome extends StatelessWidget {
  const SlideHome({
    required Widget child,
    super.key,
  }) : _child = child;

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Focus(
        autofocus: true,
        child: Actions(
          actions: <Type, Action<Intent>>{
            BackIntent: CallbackAction<BackIntent>(
              onInvoke: (_) async => context.framework.previous(),
            ),
            NextIntent: CallbackAction<NextIntent>(
              onInvoke: (_) async => context.framework.next(),
            ),
            MenuIntent: CallbackAction<MenuIntent>(
              onInvoke: (_) => context.framework.menu(),
            ),
            LicenseIntent: CallbackAction<LicenseIntent>(
              onInvoke: (_) => showLicensePage(
                context: context,
              ),
            ),
            PresentationIntent: CallbackAction<PresentationIntent>(
              onInvoke: (_) async {
                final window = await DesktopMultiWindow.createWindow(
                  jsonEncode({
                    'initSlideIndex': context.slideNumber,
                  }),
                );

                DesktopMultiWindow.setMethodHandler((call, fromWindowId) async {
                  if (!context.mounted) {
                    return;
                  }
                  final callMethod = call.method;
                  if (callMethod == 'previous') {
                    await context.framework.previous();
                  } else if (callMethod == 'next') {
                    await context.framework.next();
                  }
                });

                await window.setFrame(
                  Offset.zero & const Size(640, 360),
                );
                await window.show();

                if (!context.mounted) {
                  return;
                }
                context.framework.openWindow(window.windowId);

                return null;
              },
            ),
          },
          child: SlideFrame(
            child: _child,
          ),
        ),
      ),
    );
  }
}
