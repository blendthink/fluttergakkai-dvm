import 'package:flutter/material.dart';
import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/bash.dart';
import 'package:highlight/languages/cpp.dart';
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/glsl.dart';
import 'package:highlight/languages/json.dart';
import 'package:highlight/languages/yaml.dart';
import 'package:slidex/src/components/highlight/highlight_theme.dart';
import 'package:slidex/src/components/highlight/language.dart';
import 'package:slidex/src/internal/home/slide_frame_query.dart';

final class HighlightView extends StatelessWidget {
  HighlightView({
    required String code,
    required String fileName,
    required Language language,
    required HighlightTheme theme,
    super.key,
  })  : _code = code.replaceAll('\t', ' ' * 2),
        _fileName = fileName,
        _language = language,
        _theme = theme;

  final String _code;
  final String _fileName;
  final Language _language;
  final HighlightTheme _theme;

  late final List<TextSpan> _textSpans = _generateTextSpans;

  List<TextSpan> get _generateTextSpans {
    for (final language in Language.values) {
      final mode = switch (language) {
        Language.dart => dart,
        Language.cpp => cpp,
        Language.glsl => glsl,
        Language.yaml => yaml,
        Language.bash => bash,
        Language.json => json,
      };
      highlight.registerLanguage(language.name, mode);
    }

    final result = highlight.parse(_code, language: _language.name);
    final nodes = result.nodes ?? [];
    return _convert(nodes);
  }

  List<TextSpan> _convert(List<Node> nodes) {
    final spans = <TextSpan>[];
    var currentSpans = spans;
    final stack = <List<TextSpan>>[];

    void traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(
          node.className == null
              ? TextSpan(text: node.value)
              : TextSpan(
                  text: node.value,
                  style: _theme.textStyles[node.className!],
                ),
        );
        return;
      }

      if (node.children case final List<Node> nodes) {
        final tmp = <TextSpan>[];
        currentSpans.add(
          TextSpan(children: tmp, style: _theme.textStyles[node.className!]),
        );
        stack.add(currentSpans);
        currentSpans = tmp;

        for (final node in nodes) {
          traverse(node);
          if (node == nodes.last) {
            currentSpans = stack.isEmpty ? spans : stack.removeLast();
          }
        }
      }
    }

    nodes.forEach(traverse);

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.bodySmall?.copyWith(
      color: _theme.textColor,
      fontFamily: 'monospace',
    );

    final frameScale = context.frameScale;

    final fileNameBox = Padding(
      padding: EdgeInsets.all(4 * frameScale),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _theme.fileNameBackgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4 * frameScale,
            vertical: 2 * frameScale,
          ),
          child: Text(
            _fileName,
            style: textStyle?.copyWith(
              color: _theme.fileNameTextColor,
            ),
          ),
        ),
      ),
    );

    final codeBox = Padding(
      padding: EdgeInsets.all(8 * frameScale),
      child: Text.rich(
        TextSpan(
          style: textStyle,
          children: _textSpans,
        ),
        textDirection: TextDirection.ltr,
      ),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: _theme.backgroundColor,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            fileNameBox,
            codeBox,
          ],
        ),
      ),
    );
  }
}
