import 'package:flutter/material.dart';
import 'package:umma_pay_test/design/theme.dart';

class TimeSelectorPanelItem extends StatelessWidget {
  const TimeSelectorPanelItem({
    Key key,
    @required this.text,
    @required this.isSelected,
    @required this.mainColor,
    @required this.secondaryColor,
    @required this.onPressed,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final Color mainColor;
  final Color secondaryColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 50.0,
      height: 24.0,
      child: RaisedButton(
        elevation: 0,
        padding: EdgeInsets.all(2),
        color: Colors.white,
        child: Text(
          text,
          style: DesignTheme.text.timeSelectorPanelItem.copyWith(
            color: isSelected ? mainColor : secondaryColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: isSelected ? mainColor : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
