import 'package:flutter/material.dart';
import 'package:umma_pay_test/models/interfaces/can_item_select_interface.dart';

class TimeSelectorPanelBloc extends ChangeNotifier
    implements CanItemSelectIntrface {
  int _selectedItem = 0;
  void selectItem(int i) {
    _selectedItem = i;
    notifyListeners();
  }

  get selectedItem => _selectedItem;
}
