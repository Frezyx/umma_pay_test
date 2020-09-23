import 'package:flutter/material.dart';
import 'package:umma_pay_test/pages/stories_list_page.dart';

import 'design/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DesignTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: StoriesListPage(),
    );
  }
}
