import 'package:flutter/material.dart';
import 'package:pestbuddy/ui/theme/helpers.dart';

class AppLogoBlob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mediumPaddingAllAround,
      child: Image(image: AssetImage('lib/assets/logoBlob.png')),
    );
  }
}
