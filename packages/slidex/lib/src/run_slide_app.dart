import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:slidex/src/components/slide_widget.dart';
import 'package:slidex/src/internal/app/presentation_app.dart';
import 'package:slidex/src/internal/app/slide_app.dart';
import 'package:window_size/window_size.dart';

void runSlideApp({
  required List<String> args,
  required ThemeData theme,
  required List<SlideWidget> slides,
}) {
  WidgetsFlutterBinding.ensureInitialized();

  if (args.firstOrNull == 'multi_window' && !kIsWeb) {
    final argText = args[2];
    final argMap = jsonDecode(argText) as Map<String, dynamic>?;
    final initSlideIndex = argMap?['initSlideIndex'] as int? ?? 0;
    runApp(
      PresentationApp(
        initSlideIndex: initSlideIndex,
        slides: slides,
      ),
    );
    return;
  }

  if (kIsWeb) {
    usePathUrlStrategy();
  }

  if (!kIsWeb && Platform.isMacOS) {
    setWindowMinSize(const Size(640, 360));
  }

  final app = SlideApp(
    theme: theme,
    slides: slides,
  );
  runApp(app);
}
