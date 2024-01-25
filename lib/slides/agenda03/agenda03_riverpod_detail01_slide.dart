import 'package:dvm/data/agenda.dart';
import 'package:dvm/templates/title_header_slide.dart';
import 'package:flutter/material.dart';
import 'package:slidex/components.dart';

final class Agenda03RiverpodDetail01Slide extends SlideWidget {
  const Agenda03RiverpodDetail01Slide({super.key});

  @override
  Widget build(BuildContext context) {
    const leftCode = '''
final class AppCommandRunner extends CommandRunner<ExitStatus> {
  AppCommandRunner()
      : super(
          cliInfo.name,
          cliInfo.description,
        ) {
    //...
    addCommand(ReleasesCommand());
    addCommand(InstallCommand());
    addCommand(UseCommand());
    addCommand(DartCommand());
  }
  //...
  @override
  Future<ExitStatus> run(Iterable<String> args) async {
    try {
      final argResults = parse(args);
      if (argResults.existsVerboseFlag) {
        appContainer.updateOverrides(
          [
            loggerProvider.overrideWithValue(
              Logger(
                level: Level.verbose,
              ),
            ),
          ],
        );
      }
//...
''';
    final leftView = HighlightView(
      code: leftCode,
      fileName: 'app_command_runner.dart',
      language: Language.dart,
      theme: androidStudioTheme,
    );

    const rightCode = '''
final appContainer = ProviderContainer(
  overrides: [
    loggerProvider.overrideWithValue(Logger()),
  ],
);
''';
    final rightView = HighlightView(
      code: rightCode,
      fileName: 'app_container.dart',
      language: Language.dart,
      theme: androidStudioTheme,
    );

    final body = Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 3,
            child: leftView,
          ),
          const ScalerGap(16),
          Flexible(
            flex: 2,
            child: rightView,
          ),
        ],
      ),
    );
    return TitleHeaderSlide(
      title: Agenda.agenda03.title,
      body: body,
    );
  }

  @override
  String get speakerNote => '''
verbose フラグが指定されていた場合に、ログレベルを変更してより詳細なログを表示するために、 ProviderContainer のプロバイダーを更新しなければならないのですが

更新した後の ProviderContainer を AppCommandRunner のコンストラクタで追加されている ReleaseCommand や InstallCommand などのコマンドに渡さなければなりません。

よって、少し違和感はありますが、右のように ProviderContainer をグローバルで保持することにしました。
公式が推奨している args パッケージがより最適化されたり StaticMetaprogramming が実現されたりすれば、より適切に実装できるかもしれませんが、現状は難しそうです。''';
}
