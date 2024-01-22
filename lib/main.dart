import 'dart:io';

import 'package:dvm/app_slides.dart';
import 'package:dvm/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:slidex/slidex.dart';
import 'package:window_size/window_size.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && Platform.isMacOS) {
    setWindowMinSize(const Size(640, 360));
  }
  usePathUrlStrategy();

  runSlideApp(
    args: args,
    theme: appTheme,
    slides: appSlides,
  );
}
