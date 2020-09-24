import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:umma_pay_test/data/test/test_data_loaders.dart';
import 'package:umma_pay_test/widgets/story_screen/src/story_list_item.dart';

class StoryListBuilder extends StatelessWidget {
  const StoryListBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storyList = TestData.getStoryList();
    return Expanded(
      child: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: storyList.length,
          itemBuilder: (BuildContext context, int i) {
            return AnimationConfiguration.staggeredList(
              position: i,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: StoryListItem(story: storyList[i]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
