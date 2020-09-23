import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:umma_pay_test/widgets/app_bars/stories_list_app_bar.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildStoriesListAppBar(context),
      body: Column(
        children: [],
      ),
    );
  }
}
