import 'package:flutter/material.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/widgets/app_bars/stories_list_app_bar.dart';
import 'package:umma_pay_test/widgets/custom/seporator.dart';
import 'package:umma_pay_test/widgets/stories_list/stories_list.dart';
import 'package:umma_pay_test/widgets/time_selector_panel/time_selector_panel.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildStoriesListAppBar(context),
      body: Column(
        children: [
          Seporator(),
          Container(
            height: 52,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: DesignTheme.colors.main),
                    Text(
                      "Москва",
                      style: DesignTheme.text.toolbarCityLabel,
                    ),
                  ],
                ),
                TimeSelectorPanel(
                  selectedIndex: 1,
                  titleList: ["07:12", "12:43", "15:29", "18:11", "19:53"],
                  mainColor: DesignTheme.colors.main,
                  secondaryColor: DesignTheme.colors.darkBlue,
                ),
                Icon(Icons.notifications_none, color: DesignTheme.colors.main),
              ],
            ),
          ),
          StoriesListBuilder(),
        ],
      ),
    );
  }
}
