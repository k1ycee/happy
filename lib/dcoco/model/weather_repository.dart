import 'package:birthday/dcoco/model/weather_model.dart';
import 'package:birthday/dcoco/services/weather_calls.dart';


class WeatherRepo{
  WeatherApiProvider _apiProvider = WeatherApiProvider();
  Future<List<ListElement>> bring() => _apiProvider.fetchWeather();
}