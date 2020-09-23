import 'package:flutter/material.dart';
import 'package:umma_pay_test/widgets/story_screen/src/story_list.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoryListBuilder();
  }
}
