import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:birthday/dcoco/model/weather_model.dart';


class WeatherApiProvider{
  final String url = 'api.openweathermap.org/data/2.5/forecast?q=London&appid=';
  final String apikey = '465a6b16bec193dbfa822ef7f207eb2a'; 

  Future<Weather> fetchWeather()async{
    final response = await http.get('https://$url$apikey').catchError((error){
      print(error);
    });
    print(response.body.toString());
    if(response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception("Error");
    }
  }
}