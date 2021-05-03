import 'package:flutter/material.dart';
import 'package:pestbuddy/app/locator.dart';
import 'package:pestbuddy/app/router.dart' as router;
import 'package:pestbuddy/services/navigation_service.dart';
import 'package:pestbuddy/ui/theme/app_theme.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      navigatorKey: locator<NavigationService>().key,
      onGenerateRoute: router.generateRoute,
      initialRoute: router.LoginViewRoute,
    );
  }
}
