import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:umma_pay_test/data/test/test_data_loaders.dart';
import 'package:umma_pay_test/widgets/stories_list/src/stories_list_item.dart';

class StoriesListBuilder extends StatelessWidget {
  const StoriesListBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storiesList = TestData.getStoiesList();
    return Expanded(
      child: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: storiesList.length,
          itemBuilder: (BuildContext context, int i) {
            return AnimationConfiguration.staggeredList(
              position: i,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: StoriesListItem(story: storiesList[i]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
