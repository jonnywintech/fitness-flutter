import 'package:fitness/app/design/design_tokens.dart';
import 'package:flutter/material.dart';

ThemeData buildTheme() {
  final base = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: DT.cardBlue,
    brightness: Brightness.light,
  );

  return base.copyWith(
    scaffoldBackgroundColor: DT.bg,
    textTheme: base.textTheme.apply(bodyColor: DT.text, displayColor: DT.text),
    cardTheme: CardThemeData(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(DT.rCard)),
      ),
    ),
  );
}
