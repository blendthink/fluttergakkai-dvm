import 'package:desktop_multi_window/desktop_multi_window.dart';
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
    required this.windowIdValueNotifier,
    required super.child,
    super.key,
  }) : _router = router;

  final SlideRouter _router;

  final List<SlideWidget> slides;

  final MenuValueNotifier menuValueNotifier;

  final WindowIdValueNotifier windowIdValueNotifier;

  Future<void> previous() async => _router.previous();

  Future<void> next() async => _router.next();

  Future<void> goToSlide(int index) async {
    await _router.goToSlide(index);
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
    properties.add(
      DiagnosticsProperty<WindowIdValueNotifier>(
        'windowIdValueNotifier',
        windowIdValueNotifier,
      ),
    );
  }

  void openWindow(int windowId) {
    windowIdValueNotifier.update(windowId);
  }
}

extension SlideFrameworkX on BuildContext {
  SlideFramework get framework => SlideFramework.of(this);
}

final class WindowIdValueNotifier extends ValueNotifier<int?> {
  WindowIdValueNotifier() : super(null);

  // ignore: use_setters_to_change_properties
  void update(int windowId) {
    value = windowId;
  }

  Future<void> check() async {
    final windowIds = await DesktopMultiWindow.getAllSubWindowIds();
    if (windowIds.isEmpty) {
      value = null;
    }
  }
}
