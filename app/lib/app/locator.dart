import 'package:get_it/get_it.dart';
import 'package:pestbuddy/services/navigation_service.dart';
import 'package:pestbuddy/services/weather_service.dart';
import 'package:pestbuddy/ui/home_view/home_view_model.dart';
import 'package:pestbuddy/ui/login_view/login_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => HomeViewModel());
  locator.registerLazySingleton(() => LoginViewModel());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => WeatherService());
}
