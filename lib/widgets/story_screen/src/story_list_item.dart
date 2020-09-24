import 'package:flutter/material.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/models/story.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';

class StoryListItem extends StatelessWidget {
  const StoryListItem({
    Key key,
    @required this.story,
  }) : super(key: key);

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Seporator(),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              story.title,
              style: DesignTheme.text.storyTitle,
            ),
          ),
        ),
        Seporator(),
        Image(
          image: AssetImage(story.photoPath),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                story.description,
                style: DesignTheme.text.storyDescription,
              ),
              SizedBox(height: 20),
              Text(
                story.italicDescription,
                style: DesignTheme.text.storyDescription.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
