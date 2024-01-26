import 'package:flutter/material.dart';

final class SpeakerNote extends StatelessWidget {
  const SpeakerNote(
    String note, {
    super.key,
  }) : _note = note;

  final String _note;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          _note,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
