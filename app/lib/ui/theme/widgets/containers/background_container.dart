import 'package:flutter/material.dart';

///This container has the leaf print image as the background from the
///brand kit. The constructor takes a List<Widget> as children to be placed
///in a Column

class BackGroundImageContainer extends StatelessWidget {
  final List<Widget> children;

  BackGroundImageContainer({this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: children,
      ),
    );
  }
}
