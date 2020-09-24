import 'package:flutter/material.dart';

import '../theme.dart';

class DesignThemeText {
  final TextStyle appBar = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: DesignTheme.colors.grayLabel,
  );

  final TextStyle storyListLabel = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Colors.white,
  );

  final TextStyle storyListButton = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: DesignTheme.colors.main,
  );

  final TextStyle toolbarCityLabel = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: DesignTheme.colors.main,
  );

  final TextStyle timeSelectorPanelItem = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: DesignTheme.colors.main,
  );

  final TextStyle storyTitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: DesignTheme.colors.grayLabel,
  );
}
