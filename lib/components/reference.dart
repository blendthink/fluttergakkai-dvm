import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Reference extends StatelessWidget {
  const Reference({
    required Uri uri,
    super.key,
  }) : _uri = uri;

  final Uri _uri;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const ScalerGap(16),
          Text(
            _uri.toString(),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
          const ScalerGap(16),
        ],
      ),
    );
  }
}
