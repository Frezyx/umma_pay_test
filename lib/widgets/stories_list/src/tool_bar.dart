import 'package:flutter/material.dart';
import 'package:umma_pay_test/blocs/stories_list_bloc.dart';
import 'package:umma_pay_test/data/test/test_data_loaders.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/widgets/time_selector_panel/time_selector_panel.dart';

import '../../custom/custom_icons.dart';

class StoriesListToolBar extends StatelessWidget {
  const StoriesListToolBar({
    Key key,
    @required this.storiesListPageBloc,
  }) : super(key: key);

  final StoriesListPageBloc storiesListPageBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                CustomIcons.location_outline,
                color: DesignTheme.colors.main,
              ),
              Text(
                TestData.selectedCity,
                style: DesignTheme.text.toolbarCityLabel,
              ),
            ],
          ),
          TimeSelectorPanel(
            bloc: storiesListPageBloc,
            titleList: TestData.timesList,
            mainColor: DesignTheme.colors.main,
            secondaryColor: DesignTheme.colors.darkBlue,
          ),
          Icon(Icons.notifications_none, color: DesignTheme.colors.main),
        ],
      ),
    );
  }
}
