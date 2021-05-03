import 'package:pestbuddy/app/base_view_model.dart';
import 'package:pestbuddy/app/locator.dart';
import 'package:pestbuddy/app/router.dart';
import 'package:pestbuddy/services/navigation_service.dart';

class LoginViewModel extends BaseModel {
  NavigationService navigationService = locator<NavigationService>();

  void login() {
    navigationService.goTo(HomeViewRoute);
  }
}
