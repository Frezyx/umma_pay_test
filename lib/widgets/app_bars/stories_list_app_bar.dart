import 'package:flutter/material.dart';
import 'package:umma_pay_test/design/theme.dart';

AppBar buildStoriesListAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: Text(
      "Азкары",
      style: DesignTheme.text.appBar,
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.pop(context),
      color: DesignTheme.colors.main,
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () => null,
        color: DesignTheme.colors.grayLight,
      ),
    ],
  );
}
