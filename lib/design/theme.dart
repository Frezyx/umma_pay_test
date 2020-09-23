import 'package:flutter/material.dart';

import 'src/colors.dart';
import 'src/shadows.dart';
import 'src/text.dart';

class DesignTheme {
  static final DesignThemeColors colors = DesignThemeColors();
  static final DesignThemeText text = DesignThemeText();
  static final DesignThemeShadows shadows = DesignThemeShadows();
  static final ThemeData appTheme = ThemeData(
    fontFamily: 'Open Sans',
    primarySwatch: Colors.green,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
