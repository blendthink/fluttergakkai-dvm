import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:slidex/components.dart';
import 'package:slidex/slidex.dart';

final class OutroSlide extends SlideWidget {
  const OutroSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final qrSize = 160 * context.frameScale;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Thank you for watching',
          style: textTheme.displaySmall,
        ),
        const ScalerGap(32),
        QrImageView(
          data: 'https://github.com/blendthink/fluttergakkai-dvm',
          size: qrSize,
          backgroundColor: Colors.white,
        ),
      ],
    );
  }

  @override
  String get speakerNote => '''
この資料は GitHub にアップしていますので、興味ある方はこちらの QR コードを読み取っていただければと思います。
ご清聴ありがとうございました。''';
}
