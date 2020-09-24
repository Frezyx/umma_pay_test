import 'package:flutter/material.dart';
import 'package:umma_pay_test/models/interfaces/can_item_select_interface.dart';
import 'package:umma_pay_test/utils/enums.dart';

class StoriesListPageBloc extends ChangeNotifier
    implements CanItemSelectIntrface {
  int _selectedItem = 0;
  StoryPages _selectedPage = StoryPages.List;

  void selectItem(int i) {
    _selectedItem = i;
    notifyListeners();
  }

  get selectedItem => _selectedItem;

  void openPage(StoryPages page) {
    _selectedPage = page;
    notifyListeners();
  }

  openBackPage() {
    switch (_selectedPage) {
      case StoryPages.About:
        _selectedPage = StoryPages.List;
        notifyListeners();
        break;
      default:
    }
  }

  get selectedPage => _selectedPage;
}
