import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slidex/src/components/slide_widget.dart';
import 'package:slidex/src/internal/home/menu/slide_menu.dart';
import 'package:slidex/src/internal/slide_router.dart';

final class SlideFramework extends InheritedWidget {
  const SlideFramework({
    required SlideRouter router,
    required this.slides,
    required this.menuValueNotifier,
    required super.child,
    super.key,
  }) : _router = router;

  final SlideRouter _router;

  final List<SlideWidget> slides;

  final MenuValueNotifier menuValueNotifier;

  void previous() => _router.previous();

  void next() => _router.next();

  void goToSlide(int index) {
    _router.goToSlide(index);
    menuValueNotifier.close();
  }

  void menu() => menuValueNotifier.toggle();

  @override
  bool updateShouldNotify(SlideFramework oldWidget) =>
      _router != oldWidget._router ||
      menuValueNotifier != oldWidget.menuValueNotifier;

  static SlideFramework of(BuildContext context) {
    final framework =
        context.dependOnInheritedWidgetOfExactType<SlideFramework>();

    assert(framework != null, 'No SlideFramework found in context');

    return framework!;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      IterableProperty<SlideWidget>(
        'slides',
        slides,
      ),
    );
    properties.add(
      DiagnosticsProperty<MenuValueNotifier>(
        'menuValueNotifier',
        menuValueNotifier,
      ),
    );
  }
}

extension SlideFrameworkX on BuildContext {
  SlideFramework get framework => SlideFramework.of(this);
}
