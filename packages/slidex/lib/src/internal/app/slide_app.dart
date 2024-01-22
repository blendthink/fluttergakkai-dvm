import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slidex/src/components/slide_widget.dart';
import 'package:slidex/src/internal/home/menu/slide_menu.dart';
import 'package:slidex/src/internal/slide_framework.dart';
import 'package:slidex/src/internal/slide_intents.dart';
import 'package:slidex/src/internal/slide_query.dart';
import 'package:slidex/src/internal/slide_router.dart';

final class SlideApp extends StatefulWidget {
  const SlideApp({
    required ThemeData theme,
    required List<SlideWidget> slides,
    super.key,
  })  : _theme = theme,
        _slides = slides;

  final ThemeData _theme;
  final List<SlideWidget> _slides;

  @override
  State<SlideApp> createState() => _SlideAppState();
}

class _SlideAppState extends State<SlideApp> {
  late SlideRouter _router;

  late MenuValueNotifier _menuValueNotifier;

  late WindowIdValueNotifier _windowIdValueNotifier;

  int _slideNumber = 0;

  void _onRouteChange() {
    setState(() => _slideNumber = _router.currentIndex);
  }

  @override
  void initState() {
    super.initState();
    _menuValueNotifier = MenuValueNotifier();
    _windowIdValueNotifier = WindowIdValueNotifier();
    _router = SlideRouter(
      slides: widget._slides,
      windowIdValueNotifier: _windowIdValueNotifier,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _router.addListener(_onRouteChange);

      // Required when navigating directly to a slide via a URL or deep link.
      _onRouteChange();
    });
  }

  @override
  void dispose() {
    _router.removeListener(_onRouteChange);
    _menuValueNotifier.dispose();
    _windowIdValueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: widget._theme,
      shortcuts: _shortcuts,
      routerConfig: _router.routerConfig,
      builder: (_, child) => SlideFramework(
        slides: widget._slides,
        router: _router,
        menuValueNotifier: _menuValueNotifier,
        windowIdValueNotifier: _windowIdValueNotifier,
        child: SlideQuery(
          slideNumber: _slideNumber,
          child: child!,
        ),
      ),
    );
  }
}

const _shortcuts = <ShortcutActivator, Intent>{
  SingleActivator(LogicalKeyboardKey.arrowLeft): BackIntent(),
  SingleActivator(LogicalKeyboardKey.arrowRight): NextIntent(),
  SingleActivator(LogicalKeyboardKey.period): MenuIntent(),
  SingleActivator(LogicalKeyboardKey.keyL): LicenseIntent(),
  SingleActivator(LogicalKeyboardKey.keyP): PresentationIntent(),
};
