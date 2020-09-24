import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umma_pay_test/blocs/stories_list_bloc.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/utils/enums.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';

class StoriesListItem extends StatelessWidget {
  const StoriesListItem({
    Key key,
  }) : super(key: key);

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
                  "assets/img/stories_list/mountain.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: _buildTextColumn(),
          ),
        ],
      ),
    );
  }

  Column _buildTextColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Утром",
          style: DesignTheme.text.storyListLabel,
        ),
        SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Посмотреть",
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
