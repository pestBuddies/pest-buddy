import 'package:flutter/material.dart';
import 'package:pestbuddy/ui/theme/helpers.dart';

///Custom Button that matches the theme of the app
//
class AppButtonOne extends StatelessWidget {
  final String title;
  final Function action;
  final Color color;
  //final Color textColor;

  AppButtonOne({
    this.title,
    this.action,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Text(title),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(kitYellow),
        //textStyle: MaterialStateProperty.all(TextStyle(color: textColor)),
        padding: MaterialStateProperty.all(smallPaddingAllAround),
        backgroundColor: MaterialStateProperty.all(color),
      ),
    );
  }
}
