import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:umma_pay_test/widgets/stories_list/src/stories_list_item.dart';

class StoriesListBuilder extends StatelessWidget {
  const StoriesListBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: 2,
          itemBuilder: (BuildContext context, int i) {
            return AnimationConfiguration.staggeredList(
              position: i,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: StoriesListItem(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
