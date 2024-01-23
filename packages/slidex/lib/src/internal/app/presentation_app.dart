import 'dart:async';

import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slidex/src/components/slide_widget.dart';
import 'package:slidex/src/internal/slide_intents.dart';

final class PresentationApp extends StatefulWidget {
  const PresentationApp({
    required int initSlideIndex,
    required List<SlideWidget> slides,
    super.key,
  })  : _initSlideIndex = initSlideIndex,
        _slides = slides;

  final int _initSlideIndex;
  final List<SlideWidget> _slides;

  @override
  State<PresentationApp> createState() => _PresentationAppState();
}

class _PresentationAppState extends State<PresentationApp> {
  late int _slideIndex = widget._initSlideIndex;

  @override
  void initState() {
    super.initState();
    DesktopMultiWindow.setMethodHandler((call, fromWindowId) async {
      final callMethod = call.method;
      if (callMethod != 'updateSlideIndex') {
        return;
      }
      final slideIndex = call.arguments as int?;
      if (slideIndex == null) {
        return;
      }
      if (!context.mounted) {
        return;
      }
      setState(() {
        _slideIndex = slideIndex;
      });
    });
  }

  Future<void> _previous() => DesktopMultiWindow.invokeMethod(0, 'previous');

  Future<void> _next() => DesktopMultiWindow.invokeMethod(0, 'next');

  @override
  Widget build(BuildContext context) {
    final speakerNote = widget._slides[_slideIndex].speakerNote;
    return MaterialApp(
      shortcuts: _shortcuts,
      actions: <Type, Action<Intent>>{
        BackIntent: CallbackAction<BackIntent>(
          onInvoke: (_) async => _previous(),
        ),
        NextIntent: CallbackAction<NextIntent>(
          onInvoke: (_) async => _next(),
        ),
      },
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              speakerNote,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      ),
    );
  }
}

const _shortcuts = <ShortcutActivator, Intent>{
  SingleActivator(LogicalKeyboardKey.arrowLeft): BackIntent(),
  SingleActivator(LogicalKeyboardKey.arrowRight): NextIntent(),
};
