import 'dart:async';

import 'package:collection/collection.dart';
import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slidex/src/components/slide_widget.dart';
import 'package:slidex/src/internal/home/slide_home.dart';
import 'package:slidex/src/internal/slide_framework.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final class SlideRouter {
  SlideRouter({
    required List<SlideWidget> slides,
    required WindowIdValueNotifier windowIdValueNotifier,
  })  : _slides = slides,
        _windowIdValueNotifier = windowIdValueNotifier;

  final List<SlideWidget> _slides;

  final WindowIdValueNotifier _windowIdValueNotifier;

  late final List<_SlideRoute> _slideRoutes = _slides
      .mapIndexed(
        (i, s) => _SlideRoute(
          path: '/$i',
          pageBuilder: s.pageBuilder,
        ),
      )
      .toList();

  late final GoRouter routerConfig = _buildConfig();

  GoRouter _buildConfig() {
    final routes = _slideRoutes
        .map(
          (slideRoute) => GoRoute(
            path: slideRoute.path,
            pageBuilder: slideRoute.pageBuilder,
          ),
        )
        .toList();

    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: routes.first.path,
      routes: [
        ShellRoute(
          navigatorKey: shellNavigatorKey,
          parentNavigatorKey: rootNavigatorKey,
          routes: routes,
          builder: (_, __, child) => SlideHome(
            child: child,
          ),
        ),
      ],
    );
  }

  void addListener(void Function() listener) =>
      routerConfig.routeInformationProvider.addListener(listener);

  void removeListener(void Function() listener) =>
      routerConfig.routeInformationProvider.removeListener(listener);

  Future<void> previous() async {
    final currentIndex = this.currentIndex;

    assert(currentIndex > -1, 'No slide found.');

    final prevIndex = currentIndex - 1;
    if (prevIndex < 0) {
      return;
    }

    final slideRoute = _slideRoutes[prevIndex];
    routerConfig.go(slideRoute.path);

    await _windowIdValueNotifier.check();
    final windowId = _windowIdValueNotifier.value;
    if (kIsWeb || windowId == null) {
      return;
    }
    unawaited(
      DesktopMultiWindow.invokeMethod(windowId, 'updateSlideIndex', prevIndex),
    );
  }

  Future<void> next() async {
    final currentIndex = this.currentIndex;

    assert(currentIndex > -1, 'No slide found.');

    final nextIndex = currentIndex + 1;
    if (nextIndex >= _slideRoutes.length) {
      return;
    }

    final slideRoute = _slideRoutes[nextIndex];
    routerConfig.go(slideRoute.path);

    await _windowIdValueNotifier.check();
    final windowId = _windowIdValueNotifier.value;
    if (kIsWeb || windowId == null) {
      return;
    }
    unawaited(
      DesktopMultiWindow.invokeMethod(windowId, 'updateSlideIndex', nextIndex),
    );
  }

  Future<void> goToSlide(int index) async {
    if (index < 0 || index >= _slideRoutes.length) {
      return;
    }

    final slideRoute = _slideRoutes[index];
    routerConfig.go(slideRoute.path);

    await _windowIdValueNotifier.check();
    final windowId = _windowIdValueNotifier.value;
    if (kIsWeb || windowId == null) {
      return;
    }
    unawaited(
      DesktopMultiWindow.invokeMethod(windowId, 'updateSlideIndex', index),
    );
  }

  int get currentIndex => _slideRoutes.indexWhere(
        (slideRoute) => slideRoute.path == _currentUri.path,
      );

  Uri get _currentUri {
    final lastMatch = routerConfig.routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerConfig.routerDelegate.currentConfiguration;

    return matchList.uri;
  }
}

final class _SlideRoute {
  const _SlideRoute({
    required this.path,
    required this.pageBuilder,
  });

  final String path;
  final GoRouterPageBuilder pageBuilder;
}
