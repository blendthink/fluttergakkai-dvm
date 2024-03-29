import 'package:dvm/data/agenda.dart';
import 'package:dvm/gen/assets.gen.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class Agenda02FeelDepressedSlide extends SlideWidget {
  const Agenda02FeelDepressedSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = context.frameScale;
    final body = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _AnimatedTextList(),
          Assets.feelDepressed.image(
            height: 120 * scale,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda02.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
このように、プライベートでも業務でも Dart プロジェクトを開発することが増えていって

それぞれのプロジェクトで Dart SDK バージョンの切り替えが頻繁に発生するようになり、FVM のような Dart SDK のバージョン管理ツールが欲しくなってきました。''';
}

final class _AnimatedTextList extends StatefulWidget {
  const _AnimatedTextList();

  @override
  State<_AnimatedTextList> createState() => _AnimatedTextListState();
}

class _AnimatedTextListState extends State<_AnimatedTextList> {
  double _leftOpacity = 0;
  double _rightOpacity = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future<void>.delayed(const Duration(seconds: 2));
      if (!mounted) {
        return;
      }
      setState(() {
        _leftOpacity = 1;
      });
      await Future<void>.delayed(const Duration(seconds: 2));
      if (!mounted) {
        return;
      }
      setState(() {
        _rightOpacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.titleMedium;
    const duration = Duration(seconds: 2);
    const curve = Curves.easeIn;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedOpacity(
          opacity: _leftOpacity,
          duration: duration,
          curve: curve,
          child: Text(
            'プロジェクトごとに Dart SDK \nのバージョンが違う',
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
        AnimatedOpacity(
          opacity: _rightOpacity,
          duration: duration,
          curve: curve,
          child: Text(
            'Dart SDK のバージョンを \n毎回切り替えるのは面倒',
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
