import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umma_pay_test/blocs/stories_list_bloc.dart';
import 'package:umma_pay_test/utils/enums.dart';
import 'package:umma_pay_test/widgets/app_bars/stories_list_app_bar.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';
import 'package:umma_pay_test/widgets/stories_list/src/tool_bar.dart';
import 'package:umma_pay_test/widgets/stories_list/stories_list.dart';
import 'package:umma_pay_test/widgets/story_screen/story_screen.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storiesListPageBloc = Provider.of<StoriesListPageBloc>(context);
    return WillPopScope(
      onWillPop: () => storiesListPageBloc.openBackPage(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildStoriesListAppBar(storiesListPageBloc, context),
        body: Column(
          children: [
            Seporator(),
            StoriesListToolBar(storiesListPageBloc: storiesListPageBloc),
            _buildBody(storiesListPageBloc),
          ],
        ),
      ),
    );
  }

  _buildBody(StoriesListPageBloc storiesListPageBloc) {
    switch (storiesListPageBloc.selectedPage) {
      case StoryPages.List:
        return StoriesListBuilder();
        break;
      case StoryPages.About:
        return StoryScreen();
        break;
      default:
    }
  }
}
