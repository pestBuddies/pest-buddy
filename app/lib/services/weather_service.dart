import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pestbuddy/models/weather_data.dart';

class WeatherService {
  final String key = 'aeccc9739dfc5ad9d1769b38e18526ca';
  final String zip = '87401';
  final String url = 'api.openweathermap.org';
  final String path = '/data/2.5/weather';

  Future<WeatherData> getWeather() async {
    try {
      var response =
          await http.get(Uri.https(url, path, {'zip': zip, 'appid': key}));
      WeatherData weatherData = WeatherData.fromJson(jsonDecode(response.body));
      return weatherData;
    } catch (error) {
      return error;
    }
  }
}
