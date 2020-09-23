import 'package:flutter/material.dart';
import 'package:umma_pay_test/data/test/test_data_loaders.dart';
import 'package:umma_pay_test/design/theme.dart';

import 'custom_icons.dart';

class CityButton extends StatelessWidget {
  const CityButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
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
    );
  }
}
