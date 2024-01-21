import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract base class SlideWidget extends StatelessWidget {
  const SlideWidget({
    super.key,
  });

  GoRouterPageBuilder get pageBuilder => (context, state) => NoTransitionPage(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: this,
      );

  String get speakerNote => '';

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
