import 'package:flutter/material.dart';
import 'package:umma_pay_test/blocs/stories_list_bloc.dart';
import 'package:umma_pay_test/data/test/test_data_loaders.dart';
import 'package:umma_pay_test/design/theme.dart';

AppBar buildStoriesListAppBar(StoriesListPageBloc bloc, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: Text(
      TestData.appBarTitle,
      style: DesignTheme.text.appBar,
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => bloc.openBackPage(),
      color: DesignTheme.colors.main,
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () => null,
        color: DesignTheme.colors.grayLight,
      ),
    ],
  );
}
