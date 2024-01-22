import 'package:flutter/material.dart';

final appTheme = _baseTheme.copyWith(
  dividerTheme: _baseTheme.dividerTheme.copyWith(
    color: _appColorScheme.outline,
  ),
);

final _baseTheme = ThemeData.from(
  colorScheme: _appColorScheme,
  useMaterial3: true,
);

/// Generated using the Material Theme Builder.
/// https://m3.material.io/theme-builder#/custom
///
/// By specifying:
/// - Primary: 0xFF40C4FF
/// - Secondary: 0xFF263238
/// - Tertiary: 0xFF01579B
/// - Neutral: 0xFF8F9193
const _appColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF7AD0FF),
  onPrimary: Color(0xFF003549),
  primaryContainer: Color(0xFF004C69),
  onPrimaryContainer: Color(0xFFC3E8FF),
  secondary: Color(0xFF67D3FF),
  onSecondary: Color(0xFF003546),
  secondaryContainer: Color(0xFF004D64),
  onSecondaryContainer: Color(0xFFBDE9FF),
  tertiary: Color(0xFFA3C9FF),
  onTertiary: Color(0xFF00315C),
  tertiaryContainer: Color(0xFF004882),
  onTertiaryContainer: Color(0xFFD3E4FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF191C1E),
  onBackground: Color(0xFFE1E2E5),
  surface: Color(0xFF191C1E),
  onSurface: Color(0xFFE1E2E5),
  surfaceVariant: Color(0xFF41484D),
  onSurfaceVariant: Color(0xFFC0C7CD),
  outline: Color(0xFF8A9297),
  onInverseSurface: Color(0xFF191C1E),
  inverseSurface: Color(0xFFE1E2E5),
  inversePrimary: Color(0xFF00668A),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF7AD0FF),
  outlineVariant: Color(0xFF41484D),
  scrim: Color(0xFF000000),
);
