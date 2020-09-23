import 'package:flutter/material.dart';
import 'package:umma_pay_test/widgets/time_selector_panel/src/time_selector_panel_item.dart';

class TimeSelectorPanel extends StatelessWidget {
  const TimeSelectorPanel({
    Key key,
    @required this.titleList,
    @required this.selectedIndex,
    this.mainColor,
    this.secondaryColor,
  }) : super(key: key);

  final int selectedIndex;
  final List<String> titleList;
  final Color mainColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildItems(),
    );
  }

  _buildItems() {
    List<TimeSelectorPanelItem> items = [];
    for (var i = 0; i < titleList.length; i++) {
      final item = TimeSelectorPanelItem(
        text: titleList[i],
        isSelected: selectedIndex == i,
        mainColor: mainColor,
        secondaryColor: secondaryColor,
        onPressed: () => print("sss"),
      );
      items.add(item);
    }
    return items;
  }
}
