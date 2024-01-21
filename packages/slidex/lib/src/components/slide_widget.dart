import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

abstract interface class SlideWidget extends Widget {
  const SlideWidget({
    super.key,
  });

  GoRouterPageBuilder get pageBuilder;

  String get speakerNote;

  @protected
  SlideWidget build(BuildContext context);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      ObjectFlagProperty<GoRouterPageBuilder>.has('pageBuilder', pageBuilder),
    );
    properties.add(
      StringProperty('speakerNote', speakerNote),
    );
  }
}

@reopen
abstract base class SlideStatelessWidget extends SlideWidget {
  const SlideStatelessWidget({super.key});

  @override
  GoRouterPageBuilder get pageBuilder => (context, state) => NoTransitionPage(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: this,
      );

  @override
  String get speakerNote => '';
}
