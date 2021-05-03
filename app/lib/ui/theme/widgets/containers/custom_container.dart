import 'package:flutter/material.dart';
import 'package:pestbuddy/ui/theme/helpers.dart';

///this container already has a column in it witch will hold the widgets parameter which is a list of widgets.
///has rounded border already and background color, also has some shadow applied
class AppContainerOne extends StatelessWidget {
  final List<Widget> widgets;

  AppContainerOne({this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: smallPaddingAllAround,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: kitPurple,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2.0,
            //color: kitBlue,
            style: BorderStyle.solid,
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widgets,
      ),
    );
  }
}
