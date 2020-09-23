import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umma_pay_test/blocs/stories_list_bloc.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/models/story.dart';
import 'package:umma_pay_test/utils/const/const.dart';
import 'package:umma_pay_test/utils/enums.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';

class StoriesListItem extends StatelessWidget {
  const StoriesListItem({
    Key key,
    @required this.story,
  }) : super(key: key);

  final Story story;

  @override
  Widget build(BuildContext context) {
    final storiesListPageBloc = Provider.of<StoriesListPageBloc>(context);
    return GestureDetector(
      onTap: () => storiesListPageBloc.openPage(StoryPages.About),
      child: Column(
        children: [
          Seporator(),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              boxShadow: DesignTheme.shadows.box,
              image: DecorationImage(
                image: AssetImage(
                  story.photoPath,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: _buildTextColumn(context),
          ),
        ],
      ),
    );
  }

  Column _buildTextColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.84,
          child: AutoSizeText(
            story.title,
            style: DesignTheme.text.storyListLabel,
            minFontSize: 15,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Const.text.check,
              style: DesignTheme.text.storyListButton,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: DesignTheme.colors.main,
              size: 10,
            ),
          ],
        ),
      ],
    );
  }
}
