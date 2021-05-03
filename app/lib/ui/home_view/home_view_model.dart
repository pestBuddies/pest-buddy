import 'package:pestbuddy/app/base_view_model.dart';
import 'package:pestbuddy/app/locator.dart';
import 'package:pestbuddy/models/weather_data.dart';
import 'package:pestbuddy/services/navigation_service.dart';
import 'package:pestbuddy/services/weather_service.dart';

class HomeViewModel extends BaseModel {
  NavigationService navigationService = locator<NavigationService>();
  WeatherService weatherService = locator<WeatherService>();

  int _counter = 0;
  int get counter => _counter;

  double _getTempFromWeather(WeatherData data) {
    double tempFromData = data.main.temp;
    double tempInFarenheit = ((tempFromData - (273.15)) * 9 / 5 + 32);
    return tempInFarenheit;
  }

  void checkTheWeather() async {
    var result = await weatherService.getWeather();
    double temp = _getTempFromWeather(result);

    print('${temp.toInt()} degrees Farenheit');
  }

  void returnToLogin() {
    navigationService.goBack();
  }
}
