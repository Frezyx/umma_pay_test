import 'package:flutter/material.dart';
import 'package:umma_pay_test/widgets/app_bars/stories_list_app_bar.dart';
import 'package:umma_pay_test/widgets/stories_list/stories_list.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildStoriesListAppBar(context),
      body: Column(
        children: [
          StoriesListBuilder(),
        ],
      ),
    );
  }
}
