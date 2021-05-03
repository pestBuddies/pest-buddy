import 'package:flutter/material.dart';
import 'package:pestbuddy/ui/home_view/home_view.dart';
import 'package:pestbuddy/ui/login_view/login_view.dart';

const String HomeViewRoute = '/';
const String LoginViewRoute = 'login';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => LoginView());
  }
}
