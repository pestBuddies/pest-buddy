import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Future<dynamic> goTo(String routeName, {dynamic arguments}) {
    return key.currentState.pushNamed(routeName, arguments: arguments);
  }

  void goBack() {
    key.currentState.pop();
  }
}
