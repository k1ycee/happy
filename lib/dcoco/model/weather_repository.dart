import 'package:birthday/dcoco/model/weather_model.dart';
import 'package:birthday/dcoco/services/weather_calls.dart';


class WeatherRepo{
  WeatherApiProvider _apiProvider = WeatherApiProvider();
  Future<Weather> bring() => _apiProvider.fetchWeather();
}