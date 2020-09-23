import 'package:flutter/material.dart';
import 'package:umma_pay_test/blocs/time_selector_panel_bloc.dart';
import 'package:umma_pay_test/design/theme.dart';
import 'package:umma_pay_test/widgets/time_selector_panel/time_selector_panel.dart';

class StoriesListToolBar extends StatelessWidget {
  const StoriesListToolBar({
    Key key,
    @required this.timeSelectorPanelbloc,
  }) : super(key: key);

  final TimeSelectorPanelBloc timeSelectorPanelbloc;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            bloc: timeSelectorPanelbloc,
            titleList: ["07:12", "12:43", "15:29", "18:11", "19:53"],
            mainColor: DesignTheme.colors.main,
            secondaryColor: DesignTheme.colors.darkBlue,
          ),
          Icon(Icons.notifications_none, color: DesignTheme.colors.main),
        ],
      ),
    );
  }
}
