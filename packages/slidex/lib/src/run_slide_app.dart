import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slidex/src/components/slide_widget.dart';
import 'package:slidex/src/internal/app/presentation_app.dart';
import 'package:slidex/src/internal/app/slide_app.dart';

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

  final app = SlideApp(
    theme: theme,
    slides: slides,
  );
  runApp(app);
}
