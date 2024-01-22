import 'package:dvm/app_slides.dart';
import 'package:dvm/app_theme.dart';
import 'package:slidex/slidex.dart';

void main(List<String> args) {
  runSlideApp(
    args: args,
    theme: appTheme,
    slides: appSlides,
  );
}
