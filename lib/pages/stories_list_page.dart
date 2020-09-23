import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umma_pay_test/blocs/time_selector_panel_bloc.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/widgets/app_bars/stories_list_app_bar.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';
import 'package:umma_pay_test/widgets/stories_list/src/tool_bar.dart';
import 'package:umma_pay_test/widgets/stories_list/stories_list.dart';
import 'package:umma_pay_test/widgets/time_selector_panel/time_selector_panel.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeSelectorPanelbloc = Provider.of<TimeSelectorPanelBloc>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildStoriesListAppBar(context),
      body: Column(
        children: [
          Seporator(),
          StoriesListToolBar(timeSelectorPanelbloc: timeSelectorPanelbloc),
          StoriesListBuilder(),
        ],
      ),
    );
  }
}
