import 'package:flutter/material.dart';
import 'package:umma_pay_test/design/theme.dart';

class Seporator extends StatelessWidget {
  const Seporator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: DesignTheme.colors.grayLightest,
    );
  }
}
