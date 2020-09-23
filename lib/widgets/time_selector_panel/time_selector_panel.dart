import 'package:flutter/material.dart';
import 'package:umma_pay_test/models/interfaces/can_item_select_interface.dart';
import 'package:umma_pay_test/widgets/time_selector_panel/src/time_selector_panel_item.dart';

class TimeSelectorPanel extends StatelessWidget {
  const TimeSelectorPanel({
    Key key,
    @required this.titleList,
    @required this.bloc,
    this.mainColor,
    this.secondaryColor,
  }) : super(key: key);

  final List<String> titleList;
  final CanItemSelectIntrface bloc;
  final Color mainColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildItems(bloc),
    );
  }

  _buildItems(bloc) {
    List<TimeSelectorPanelItem> items = [];
    for (var i = 0; i < titleList.length; i++) {
      final item = TimeSelectorPanelItem(
        text: titleList[i],
        isSelected: bloc.selectedItem == i,
        mainColor: mainColor,
        secondaryColor: secondaryColor,
        onPressed: () => bloc.selectItem(i),
      );
      items.add(item);
    }
    return items;
  }
}
